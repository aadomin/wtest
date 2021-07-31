import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../OtherPage/OtherPage.dart';
import 'MyHomePageModel.dart';

import '../../repository/core.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    final _model = Provider.of<MyHomePageModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Тестовая'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _model.getData().length,
          itemBuilder: (context, i) {
            return ListTile(
              title: NText(),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OtherPage(),
            ),
          );
        },
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ),
    );
  }
}

class NText extends StatefulWidget {
  const NText({
    Key? key,
  }) : super(key: key);

  @override
  _NTextState createState() => _NTextState();
}

class _NTextState extends State<NText> {
  
  Repository repository = Repository();

  @override
  void initState() {
    // TODO: implement initState
    

    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    repository.getData()
    return Text('2');
  }
}
