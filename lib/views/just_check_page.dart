import 'package:flutter/material.dart';

class JustCheckPage extends StatefulWidget {
  const JustCheckPage({Key? key}) : super(key: key);

  @override
  State<JustCheckPage> createState() => _JustCheckPageState();
}

class _JustCheckPageState extends State<JustCheckPage> {
  @override
  void initState() {
    super.initState();
  }

  bool _isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(height: 40),
          Card(
            semanticContainer: true,
            borderOnForeground: true,
            surfaceTintColor: Colors.red,
            child: Row(
              children: [
                _isExpanded != true
                    ? Container(
                        height: 40,
                        width: 3,
                        color: Colors.yellow,
                      )
                    : Container(
                        height: 50,
                        width: 2,
                        color: Colors.pink,
                      ),
                Expanded(
                  flex: 10,
                  child: ExpansionTile(
                    title: const Text('Expandable Item'),
                    children: const <Widget>[
                      ListTile(
                        title: Text('Subitem 1'),
                      ),
                      ListTile(
                        title: Text('Subitem 2'),
                      ),
                    ],
                    onExpansionChanged: (isExpanded) {
                      setState(() {
                        _isExpanded = isExpanded;
                      });
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
