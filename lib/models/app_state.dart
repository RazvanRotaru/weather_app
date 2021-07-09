import 'package:flutter/cupertino.dart';

class AppState extends ChangeNotifier {
  String? _text;
  int _currentTab = 0;

  String? get text => _text;

  set text(String? s) {
    print('text set to $s');
    _text = s;
    notifyListeners();
  }

  int get currentTab => _currentTab;

  set currentTab(int tab) {
    print('current tab is $tab');
    _currentTab = tab;
    if (tab == 0) {
      _text = null;
    }

    notifyListeners();
  }
}
