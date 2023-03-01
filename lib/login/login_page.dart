import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login Page')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            TextFormField(
              key: const Key('TeamName'),
              decoration: const InputDecoration(hintText: 'Team Name'),
            ),
            TextFormField(
              key: const Key('Token'),
              decoration: const InputDecoration(hintText: 'Token'),
            ),
            const Expanded(child: SizedBox.shrink()),
            const ElevatedButton(onPressed: null, child: Text('LOG IN')),
            const ElevatedButton(onPressed: null, child: Text('CANCEL')),
          ],
        ),
      ),
    );
  }
}
