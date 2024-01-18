import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Formular Component'),
        ),
        body: FormularComponent(),
      ),
    );
  }
}

class FormularComponent extends StatefulWidget {
  @override
  _FormularComponentState createState() => _FormularComponentState();
}

class _FormularComponentState extends State<FormularComponent> {
  // Controller for form fields
  final TextEditingController nameController = TextEditingController();
  final TextEditingController surnameController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController emailController = TextEditingController();

  // Function to handle form submission
  void handleSubmit() {
    // You can perform any action with the form data here, e.g., send it to a server
    print('Form submitted with data:');
    print('Name: ${nameController.text}');
    print('Surname: ${surnameController.text}');
    print('Phone: ${phoneController.text}');
    print('Email: ${emailController.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Form(
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
              decoration: InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: surnameController,
              decoration: InputDecoration(labelText: 'Surname'),
            ),
            TextFormField(
              controller: phoneController,
              decoration: InputDecoration(labelText: 'Phone'),
            ),
            TextFormField(
              controller: emailController,
              decoration: InputDecoration(labelText: 'Email'),
              keyboardType: TextInputType.emailAddress,
            ),
            SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: handleSubmit,
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
