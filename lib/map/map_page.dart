import 'package:flutter/material.dart';

class MapPage extends StatelessWidget {
  const MapPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Map Page')),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Row(
              children: const [
                Text('0 km/h'),
                Expanded(
                  child: SizedBox.shrink(),
                ),
                Text('0 km/ 0 km')
              ],
            ),
            const Expanded(
              key: Key('Map'),
              child:
                  FittedBox(fit: BoxFit.fill, child: Icon(Icons.map_outlined)),
            ),
          ],
        ),
      ),
    );
  }
}
