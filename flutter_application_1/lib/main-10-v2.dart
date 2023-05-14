import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  MyHomePage({super.key});

  final tbl = MyTable();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              padding: const EdgeInsets.all(10),
              child: tbl,
            ),
          ],
        ),
      ),
    );
  }
}

class MyTable extends StatefulWidget {
  const MyTable({super.key});
  @override
  State<MyTable> createState() => MyTableState();
}

class MyTableState extends State<MyTable> {
  final tr = <TableRow>[];

  @override
  Widget build(BuildContext context) {
    final textController = TextEditingController();

    return Column(
      children: [
        Table(
            border: TableBorder.all(),
            defaultVerticalAlignment: TableCellVerticalAlignment.middle,
            children: tr),
        Container(
            padding: const EdgeInsets.all(16.0),
            child: TextField(
              controller: textController,
            )),
        ElevatedButton(
          onPressed: () {
            print('Add ${textController.text} into the table');
            addRow(textController.text);
          },
          child: const Text("Add Row"),
        )
      ],
    );
  }

  TableRow createRow(String txt) {
    return TableRow(children: <Widget>[
      Container(padding: const EdgeInsets.all(10), child: Text(txt))
    ]);
  }

  void addRow(String txt) {
    setState(() {
      tr.add(createRow(txt));
    });
  }
}
