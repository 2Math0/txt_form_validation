import 'package:flutter/material.dart';
import 'package:boolean_validation/boolean_validation.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Validation Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const ValidationForm(),
    );
  }
}

class ValidationForm extends StatefulWidget {
  const ValidationForm({super.key});

  @override
  ValidationFormState createState() => ValidationFormState();
}

class ValidationFormState extends State<ValidationForm> {
  final _formKey = GlobalKey<FormState>();
  final Validators _validators = Validators();

  final _emailController = TextEditingController();
  final _mobileController = TextEditingController();
  final _integerController = TextEditingController();
  final _urlController = TextEditingController();
  final _dateController = TextEditingController();
  final _creditCardController = TextEditingController();
  final _usernameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Validation Example'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: <Widget>[
              TextFormField(
                controller: _emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                validator: (value) => _validators.validateEmail(
                  value,
                  'Email is required',
                  'Invalid email',
                ),
              ),
              TextFormField(
                controller: _mobileController,
                decoration: const InputDecoration(labelText: 'Mobile Number'),
                validator: (value) => _validators.validateMobileNumber(
                  value,
                  'Mobile number is required',
                  'Invalid mobile number',
                ),
              ),
              TextFormField(
                controller: _integerController,
                decoration: const InputDecoration(labelText: 'Integer'),
                validator: (value) => _validators.validateInteger(
                  value,
                  'Number is required',
                ),
              ),
              TextFormField(
                controller: _urlController,
                decoration: const InputDecoration(labelText: 'URL'),
                validator: (value) => _validators.validateUrl(
                  value!,
                  'URL is required',
                  'Invalid URL',
                ),
              ),
              TextFormField(
                controller: _dateController,
                decoration: const InputDecoration(labelText: 'Date (YYYY-MM-DD)'),
                validator: (value) => _validators.validateDate(
                  value!,
                  'Date is required',
                  'Invalid date',
                ),
              ),
              TextFormField(
                controller: _creditCardController,
                decoration: const InputDecoration(labelText: 'Credit Card Number'),
                validator: (value) => _validators.validateCreditCard(
                  value!,
                  'Credit card number is required',
                  'Invalid credit card number',
                ),
              ),
              TextFormField(
                controller: _usernameController,
                decoration: const InputDecoration(labelText: 'Username'),
                validator: (value) => _validators.validateUsername(
                  value!,
                  'Username is required',
                  'Invalid username',
                ),
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  if (_formKey.currentState!.validate()) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(content: Text('All validations passed!')),
                    );
                  }
                },
                child: const Text('Validate'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  @override
  void dispose() {
    _emailController.dispose();
    _mobileController.dispose();
    _integerController.dispose();
    _urlController.dispose();
    _dateController.dispose();
    _creditCardController.dispose();
    _usernameController.dispose();
    super.dispose();
  }
}
