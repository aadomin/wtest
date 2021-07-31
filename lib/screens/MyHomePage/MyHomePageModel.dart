import '../../repository/core.dart';
import 'package:flutter/foundation.dart';

class MyHomePageModel with ChangeNotifier {
  List<String> _myData = ['one', 'two', 'one', 'two'];

  List<String> getData() => _myData;

  void addData(String data) {
    _myData.add(data);
  }
}
