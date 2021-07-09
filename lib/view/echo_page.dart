import 'package:flutter/material.dart';

class EchoPage extends StatelessWidget {
  const EchoPage({Key? key, required this.text}) : super(key: key);

  final String? text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(text ?? 'No text inserted'),
    );
  }
}
