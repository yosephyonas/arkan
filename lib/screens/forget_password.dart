import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  static const String route = '/ForgotPasswordScreen';

  const ForgotPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Forgot Your Password'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
              ),
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
              },
              child: Text('Submit'),
            ),
          ],
        ),
      ),
    );
  }
}
