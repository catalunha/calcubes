import 'package:calcubes/app/domain/models/parts_of_operation.dart';
import 'package:calcubes/app/domain/models/parts_of_operation_exception.dart';
import 'package:calcubes/app/presentation/views/utils/app_number_formfield.dart';
import 'package:calcubes/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:validatorless/validatorless.dart';

class DataForOperation extends StatefulWidget {
  String operation = Get.arguments;
  DataForOperation({Key? key}) : super(key: key);

  @override
  State<DataForOperation> createState() => _DataForOperationState();
}

class _DataForOperationState extends State<DataForOperation> {
  final _formKey = GlobalKey<FormState>();

  final _number1TEC = TextEditingController();
  final _number2TEC = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _number1TEC.text = '';
    _number2TEC.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Informe os dados'),
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              AppNumberFormField(
                label: 'Number 1',
                controller: _number1TEC,
                validator: Validatorless.required('Number 1 é obrigatória'),
              ),
              const SizedBox(
                height: 50,
              ),
              Text(widget.operation),
              const SizedBox(
                height: 50,
              ),
              AppNumberFormField(
                label: 'Number 2',
                controller: _number2TEC,
                validator: Validatorless.required('Number 2 é obrigatória'),
              ),
              const SizedBox(
                height: 50,
              ),
              TextButton(
                  onPressed: () async {
                    final formValid =
                        _formKey.currentState?.validate() ?? false;
                    if (formValid) {
                      PartsOfOperation partsOfOperation = PartsOfOperation(
                          operation: widget.operation,
                          number1: _number1TEC.text,
                          number2: _number2TEC.text);
                      try {
                        partsOfOperation.isPossible();
                        Get.toNamed(Routes.hundredsTensOnesAdd,
                            arguments: partsOfOperation);
                      } on PartsOfOperationException catch (error) {
                        Get.snackbar('Erro ${error.code}', error.message,
                            backgroundColor: Colors.red,
                            margin: const EdgeInsets.all(20));
                      }
                    }
                  },
                  child: const Text('Calculate'))
            ],
          ),
        ),
      ),
    );
  }
}
