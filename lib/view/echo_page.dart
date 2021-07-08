import 'package:flutter/material.dart';
import 'package:weather_app/view/page_scaffold.dart';

class EchoPage extends StatelessWidget {
  const EchoPage({Key? key, required this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      index: 3,
      title: 'Echo',
      body: Center(
        child: Text(text ?? 'No text inserted'),
      ),
    );
  }
}
