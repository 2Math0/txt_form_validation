import 'package:boolean_validation/boolean_validation.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  final Validators validators = Validators();

  group('Validators', () {
    test('validateEmail', () {
      expect(
          validators.validateEmail(null, 'Email is required', 'Invalid email'),
          'Email is required');
      expect(validators.validateEmail('', 'Email is required', 'Invalid email'),
          'Email is required');
      expect(
          validators.validateEmail(
              'invalidemail', 'Email is required', 'Invalid email'),
          'Invalid email');
      expect(
          validators.validateEmail(
              'test@example.com', 'Email is required', 'Invalid email'),
          null);
    });

    test('validateMobileNumber', () {
      expect(
          validators.validateMobileNumber(
              null, 'Mobile number is required', 'Invalid mobile number'),
          'Mobile number is required');
      expect(
          validators.validateMobileNumber(
              '', 'Mobile number is required', 'Invalid mobile number'),
          'Mobile number is required');
      expect(
          validators.validateMobileNumber(
              '12345', 'Mobile number is required', 'Invalid mobile number'),
          'Invalid mobile number');
      expect(
          validators.validateMobileNumber('1234567890',
              'Mobile number is required', 'Invalid mobile number'),
          null);
    });

    test('validateInteger', () {
      expect(validators.validateInteger(null, 'Number is required'),
          'Number is required');
      expect(validators.validateInteger('', 'Number is required'),
          'Number is required');
      expect(validators.validateInteger('abc', 'Number is required'),
          'Enter a valid number');
      expect(validators.validateInteger('123', 'Number is required'), null);
    });

    test('validateUrl', () {
      expect(validators.validateUrl('', 'URL is required', 'Invalid URL'),
          'URL is required');
      expect(
          validators.validateUrl(
              'invalidurl', 'URL is required', 'Invalid URL'),
          'Invalid URL');
      expect(
          validators.validateUrl(
              'http://example.com', 'URL is required', 'Invalid URL'),
          null);
    });

    test('validateDate', () {
      expect(validators.validateDate('', 'Date is required', 'Invalid date'),
          'Date is required');
      expect(
          validators.validateDate(
              'invaliddate', 'Date is required', 'Invalid date'),
          'Invalid date');
      expect(
          validators.validateDate(
              '2020-01-01', 'Date is required', 'Invalid date'),
          null);
    });

    test('validateCreditCard', () {
      expect(
          validators.validateCreditCard('', 'Credit card number is required',
              'Invalid credit card number'),
          'Credit card number is required');
      expect(
          validators.validateCreditCard('1234567890123456',
              'Credit card number is required', 'Invalid credit card number'),
          'Invalid credit card number');
      expect(
          validators.validateCreditCard('4111111111111111',
              'Credit card number is required', 'Invalid credit card number'),
          null);
    });

    test('validateUsername', () {
      expect(
          validators.validateUsername(
              '', 'Username is required', 'Invalid username'),
          'Username is required');
      expect(
          validators.validateUsername(
              'a', 'Username is required', 'Invalid username'),
          'Invalid username');
      expect(
          validators.validateUsername(
              'username_123', 'Username is required', 'Invalid username'),
          null);
    });
  });
}
