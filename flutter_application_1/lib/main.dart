import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Widget placeInfo = Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [Text('UTM Lake'), Text('Skudai, Malaysia')],
      ),
    );

    Widget titleSection = Container(
        padding: const EdgeInsets.all(32),
        child: Row(
          children: [
            placeInfo,
            const Icon(Icons.star, color: Colors.red),
            const Text('41')
          ],
        ));

    Widget buttonSection = Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _buildButtonColumn(context, Colors.blue, Icons.call, 'CALL'),
        _buildButtonColumn(context, Colors.blue, Icons.near_me, 'ROUTE'),
        _buildButtonColumn(context, Colors.blue, Icons.share, 'SHARE'),
      ],
    );

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter layout demo'),
        ),
        body: Column(children: [
          const Image(image: AssetImage('assets/images/utmlake.jpg')),
          titleSection,
          buttonSection
        ]),
      ),
    );
  }

  Widget _buildButtonColumn(
      BuildContext context, Color color, IconData icon, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(icon, color: color),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w400,
            color: color,
          ),
        ),
      ],
    );
  }
}
