import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:weather_app/view/page_scaffold.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const PageScaffold(
      index: 0,
      title: 'Home',
      body: Center(child: Text('home')),
    );
  }
}
