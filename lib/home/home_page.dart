import 'package:flutter/material.dart';
import 'package:rb_reader/login/login.dart';
import 'package:rb_reader/map/map_page.dart';

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
          children: const [
            Text('Your Position'),
            Expanded(
              child: SizedBox.shrink(),
            ),
            Image(image: AssetImage('assets/napis_rb_logo.png')),
            Expanded(
              child: SizedBox.shrink(),
            ),
            ElevatedButton(
              onPressed: null,
              child: Text('Select the route:'),
            ),
            MapButton(),
            LoginButton(),
          ],
        ),
      ),
    );
  }
}

class MapButton extends StatelessWidget {
  const MapButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('MapButton'),
      onPressed: () {
        Navigator.of(context).push(
          MaterialPageRoute<MapPage>(
            builder: (context) => const MapPage(),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Theme.of(context).colorScheme.secondary,
      ),
      child: const Text('Map:'),
    );
  }
}

class LoginButton extends StatelessWidget {
  const LoginButton({super.key});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      key: const Key('LoginButton'),
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
    );
  }
}
