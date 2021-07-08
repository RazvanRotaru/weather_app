import 'package:flutter/material.dart';
import 'package:weather_app/locator.dart';

class PageScaffold extends StatelessWidget {
  const PageScaffold({Key key, this.body, this.index, this.title}) : super(key: key);

  final Widget body;
  final int index;
  final String title;

  static List<String> tabs = <String>['/', '/echo?text=ok'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(title),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
          // Navigator.pushNamed(context, tabs[index]);
          navigationService.navigateTo(tabs[index]);
        },
        currentIndex: index,
        showSelectedLabels: false,
        backgroundColor: Colors.brown,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wysiwyg_outlined),
            label: 'Echo',
          ),
        ],
      ),
      body: body,
    );
  }
}
