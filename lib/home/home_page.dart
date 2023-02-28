import 'package:flutter/material.dart';
import 'package:rb_reader/login/login.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('RBreader.com FAQ?')),
      body: Container(
        alignment: Alignment.center,
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            const Text('Your Position'),
            const Expanded(
              child: SizedBox.shrink(),
            ),
            const Image(image: AssetImage('assets/napis_rb_logo.png')),
            const Expanded(
              child: SizedBox.shrink(),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Select the route:'),
            ),
            const ElevatedButton(
              onPressed: null,
              child: Text('Map:'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<LoginPage>(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              ),
              child: const Text('LOG IN FOR THE EVENT:'),
            )
          ],
        ),
      ),
    );
  }
}
