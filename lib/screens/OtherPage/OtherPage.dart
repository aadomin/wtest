import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'OtherPageModel.dart';

class OtherPage extends StatelessWidget {
  const OtherPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _model = Provider.of<OtherPageModel>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Тестовая'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: _model.getData().length,
          itemBuilder: (context, i) {
            return ListTile(
              title: Text(
                _model.getData()[i].toString(),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _model.buttonPressed();
        },
      ),
    );
  }
}
