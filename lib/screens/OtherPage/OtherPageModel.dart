import '../../repository/core.dart';
import 'package:flutter/foundation.dart';

class OtherPageModel with ChangeNotifier {
  List<String> _myData = ['one', 'two'];

  List<String> getData() => _myData;

  void buttonPressed() {
    _myData.add('2');
    notifyListeners();
  }
}
