import 'package:calcubes/app/domain/models/parts_of_operation_exception.dart';

class PartsOfOperation {
  final String operation;
  final String number1;
  final String number2;
  PartsOfOperation({
    required this.operation,
    required this.number1,
    required this.number2,
  });
  int number1Hundreds() {
    return numberHundreds(number1);
  }

  int numberHundreds(String number) {
    int? result;
    if (number.length == 3) {
      result = int.tryParse(number[0]);
    }
    return result ?? 0;
  }

  int number1Tens() {
    return numberTens(number1);
  }

  int numberTens(String number) {
    int? result;
    if (number.length == 3) {
      result = int.tryParse(number[1]);
    } else if (number.length == 2) {
      result = int.tryParse(number[0]);
    }
    return result ?? 0;
  }

  int number1Ones() {
    return numberOnes(number1);
  }

  int numberOnes(String number) {
    int? result;
    if (number.length == 3) {
      result = int.tryParse(number[2]);
    } else if (number.length == 2) {
      result = int.tryParse(number[1]);
    } else {
      result = int.tryParse(number[0]);
    }
    return result ?? 0;
  }

  int number2Hundreds() {
    return numberHundreds(number2);
  }

  int number2Tens() {
    return numberTens(number2);
  }

  int number2Ones() {
    return numberOnes(number2);
  }

  int sum() {
    int? number1Int = int.tryParse(number1);
    int? number2Int = int.tryParse(number2);
    return (number1Int ?? 0) + (number2Int ?? 0);
  }

  int sub() {
    int? number1Int = int.tryParse(number1);
    int? number2Int = int.tryParse(number2);
    return (number1Int ?? 0) - (number2Int ?? 0);
  }

  int answer() {
    if (operation == '+') {
      return sum();
    } else if (operation == '-') {
      return sub();
    }
    return 0;
  }

  bool isPossible() {
    bool result = false;
    int? number1Int = int.tryParse(number1);
    int? number2Int = int.tryParse(number2);
    if (number1Int == null || number2Int == null) {
      return false;
    }
    print(number1Int);
    print(number2Int);
    if (operation == '+') {
      if ((number1Int + number2Int) < 999) {
        return true;
      } else {
        throw PartsOfOperationException(
            code: 1, message: "I'm sorry! Your answer can't be above 999.");
      }
    }
    if (operation == '-') {
      if ((number1Int <= 999) &&
          (number2Int <= 999) &&
          (number2Int <= number1Int)) {
        return true;
      } else {
        if (number1Int > 999) {
          throw PartsOfOperationException(
              code: 2,
              message: "I'm sorry! Your big number can't be above 999.");
        }
        if (number2Int > 999) {
          throw PartsOfOperationException(
              code: 3,
              message: "I'm sorry! Your small number can't be above 999.");
        }
        if (number2Int > number1Int) {
          throw PartsOfOperationException(
              code: 4,
              message:
                  "I'm sorry! Your small number cannot be above then big number.");
        }
      }
    }
    return result;
  }

  @override
  String toString() =>
      'PartsOfOperation(operation: $operation, number1: $number1, number2: $number2)';
}
