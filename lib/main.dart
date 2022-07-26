import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Bassem dhouieb';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: _title,
      home: Scaffold(
        appBar: AppBar(title: const Text(_title)),
        body: const MyStatefulWidget(),
      ),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  bool _customTileExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        const ExpansionTile(
          title: Text('ExpansionTile 1'),
          subtitle: Text('Trailing expansion arrow icon'),
          children: <Widget>[
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.blue,
                ),
                title: Text('Blue')),
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.red,
                ),
                title: Text('Red')),
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.amber,
                ),
                title: Text('Amber')),
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.pink,
                ),
                title: Text('Pink')),
            ListTile(
                leading: CircleAvatar(
                  backgroundColor: Colors.green,
                ),
                title: Text('Green')),
          ],
        ),
        ExpansionTile(
          title: const Text('ExpansionTile 2'),
          subtitle: const Text('Custom expansion arrow icon'),
          //to change the icon
          trailing: Icon(
            _customTileExpanded
                ? Icons.arrow_drop_down_circle
                : Icons.arrow_drop_down,
          ),
          children: const <Widget>[
            ListTile(title: Text('This is tile number 2')),
          ],
          onExpansionChanged: (bool expanded) {
            setState(() => _customTileExpanded = expanded);
          },
        ),
        const ExpansionTile(
          title: Text('ExpansionTile 3'),
          subtitle: Text('Leading expansion arrow icon'),
          //to change the arrow to the left
          controlAffinity: ListTileControlAffinity.leading,
          children: <Widget>[
            ListTile(title: Text('This is tile number 3')),
          ],
        ),
      ],
    );
  }
}
