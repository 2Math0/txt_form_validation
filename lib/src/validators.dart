import 'package:boolean_validation/src/is_valid.dart';

class Validators {
  final ValidationLogic validationLogic = ValidationLogic();

  String? validateEmail(
      String? value,
      String? emailRequiredMessage,
      String? validEmailMessage,
      ) {
    if (value == null || value.isEmpty) {
      return emailRequiredMessage ?? 'Must Enter an Email';
    } else if (!validationLogic.isValidEmail(value)) {
      return validEmailMessage ?? 'Please Enter a valid Email!';
    }
    return null;
  }

  String? validateMobileNumber(
      String? value,
      String? mobileRequiredMessage,
      String? validMobileMessage,
      ) {
    if (value == null || value.isEmpty) {
      return mobileRequiredMessage ?? 'Mobile number is required';
    } else if (!validationLogic.isCorrectMobileNumber(value)) {
      return validMobileMessage ?? 'Please enter a valid mobile number';
    }
    return null;
  }

  String? validateInteger(
      String? value,
      String? integerRequiredMessage,
      ) {
    if (value == null || value.isEmpty) {
      return integerRequiredMessage ?? 'Number is required';
    } else if (!validationLogic.isInteger(value)) {
      return 'Enter a valid number';
    }
    return null;
  }

  String? validateUrl(
      String value,
      String? urlRequiredMessage,
      String? validUrlMessage,
      ) {
    if (value.isEmpty) {
      return urlRequiredMessage ?? 'URL is required';
    } else if (!validationLogic.isValidUrl(value)) {
      return validUrlMessage ?? 'Please enter a valid URL';
    }
    return null;
  }

  String? validateDate(
      String value,
      String? dateRequiredMessage,
      String? validDateMessage,
      ) {
    if (value.isEmpty) {
      return dateRequiredMessage ?? 'Date is required';
    } else if (!validationLogic.isValidDate(value)) {
      return validDateMessage ?? 'Please enter a valid date';
    }
    return null;
  }

  String? validateCreditCard(
      String value,
      String? cardRequiredMessage,
      String? validCardMessage,
      ) {
    if (value.isEmpty) {
      return cardRequiredMessage ?? 'Credit card number is required';
    } else if (!validationLogic.isValidCreditCard(value)) {
      return validCardMessage ?? 'Please enter a valid credit card number';
    }
    return null;
  }

  String? validateUsername(
      String value,
      String? usernameRequiredMessage,
      String? validUsernameMessage,
      ) {
    if (value.isEmpty) {
      return usernameRequiredMessage ?? 'Username is required';
    } else if (!validationLogic.isValidUsername(value)) {
      return validUsernameMessage ??
          'Username must be 4-20 characters long and can include letters, numbers, and underscores';
    }
    return null;
  }
}


