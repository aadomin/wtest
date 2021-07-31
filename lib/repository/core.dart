import 'dart:async';

class Repository {
  List<String> _myData = ['one', 'two'];

  var streamController = StreamController<List<String>>();
  
  List<String> getData() => _myData;

  void addData(String data) {
    _myData.add(data);
    streamController.add(_myData);
  }
}

