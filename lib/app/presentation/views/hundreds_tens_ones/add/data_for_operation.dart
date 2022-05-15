import 'package:calcubes/app/domain/models/parts_of_operation.dart';
import 'package:calcubes/app/domain/models/parts_of_operation_exception.dart';
import 'package:calcubes/app/presentation/views/utils/app_number_formfield.dart';
import 'package:calcubes/app/routes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
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
    super.initState();
    _number1TEC.text = '';
    _number2TEC.text = '';
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: Text(
          'Add the values',
          style: GoogleFonts.pacifico(fontSize: 30.0, color: Colors.black),
        ),
        backgroundColor: Colors.white,
      ),
      body: Form(
        key: _formKey,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 10,
                ),
                AppNumberFormField(
                  label: widget.operation == '+'
                      ? 'Addend one'
                      : 'Minuend one (Big number)',
                  controller: _number1TEC,
                  validator: Validatorless.required('Addend one is required'),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(widget.operation == '+' ? 'plus' : 'minus'),
                const SizedBox(
                  height: 10,
                ),
                AppNumberFormField(
                  label: widget.operation == '+'
                      ? 'Addend two'
                      : 'Subtrahend two (Small number)',
                  controller: _number2TEC,
                  validator: Validatorless.required('Addend two is required'),
                ),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
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
                          Get.snackbar('Error ${error.code}', error.message,
                              backgroundColor: Colors.red,
                              margin: const EdgeInsets.all(20));
                        }
                      }
                    },
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(18.0),
                          // side: const BorderSide(color: Colors.red),
                        ),
                      ),
                    ),
                    child: Text(
                      widget.operation == '+'
                          ? 'Find the sum'
                          : 'Find the difference',
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
