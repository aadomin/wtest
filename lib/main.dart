import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    String myText = '''
     Старую шинель, укатанную в сверток, взял Степа Векшин. Ноша освобождала
его от  древнего обычая обмывания. К весне  1953  года на Черноморском флоте.
''';

    var myTextList = myText.split(RegExp(r"[\n ]"));
    bool? checkboxValue = false;

    return Scaffold(
      appBar: AppBar(
        title: Text('Тестовая ${myText.length}'),
      ),
      body: Column(
        children: [
          Stack(
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 91.0),
                child: Divider(),
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 92,
                        width: 22,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            bottom: 12,
                          ),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child:
                                Text('ГЛАВНЫЕ', style: TextStyle(fontSize: 11)),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 130,
                        width: 22,
                        child: Padding(
                          padding: const EdgeInsets.only(
                            left: 8,
                            top: 0,
                          ),
                          child: RotatedBox(
                            quarterTurns: 3,
                            child: Text('ДОПОЛНИТЕЛЬНЫЕ',
                                style: TextStyle(fontSize: 11)),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Expanded(
                    child: SizedBox(
                      height: 400,
                      child: ReorderableListView(
                        onReorder: (int oldIndex, int newIndex) {
                          setState(() {
                            print('1');
                          });
                        },
                        children: [
                          ListTile(
                            key: ObjectKey(Text('df')),
                            title: Text('непомерный'),
                            leading: Checkbox(
                              onChanged: (bool? value) {
                                setState(() {
                                  checkboxValue = value;
                                });
                              },
                              value: checkboxValue,
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text('1334'),
                            ),
                          ),
                          ListTile(
                            key: ObjectKey(Text('df1')),
                            title: Text('огромный'),
                            leading: Checkbox(
                              onChanged: (bool? value) {
                                setState(() {
                                  checkboxValue = value;
                                });
                              },
                              value: checkboxValue,
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text('573'),
                            ),
                          ),
                          ListTile(
                            key: ObjectKey(Text('df2')),
                            title: Text('невероятный, непомерный'),
                            leading: Checkbox(
                              onChanged: (bool? value) {
                                setState(() {
                                  checkboxValue = value;
                                });
                              },
                              value: checkboxValue,
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text('71'),
                            ),
                          ),
                          ListTile(
                            key: ObjectKey(Text('df3')),
                            title: Text('колоссальный'),
                            leading: Checkbox(
                              onChanged: (bool? value) {
                                setState(() {
                                  checkboxValue = value;
                                });
                              },
                              value: checkboxValue,
                            ),
                            trailing: Padding(
                              padding: const EdgeInsets.only(
                                right: 20,
                              ),
                              child: Text('5'),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Wrap(
                  runSpacing: 0,
                  spacing: 0,
                  children: [
                    for (var i in myTextList)
                      InkWell(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(4, 7, 4, 7),
                            child: Text(
                              i,
                              style: TextStyle(
                                fontSize: 20,
                              ),
                            ),
                          ),
                          onTap: () {
                            final snackBar = SnackBar(content: Text(i));
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}
