import 'package:flutter/material.dart';

class FadeAnimationPage extends Page<dynamic> {
  const FadeAnimationPage({Key? key, required this.child}) : super(key: key as LocalKey?);

  final Widget child;

  @override
  Route<dynamic> createRoute(BuildContext context) {
    return PageRouteBuilder<dynamic>(
      settings: this,
      pageBuilder: (BuildContext context, Animation<double> animation, Animation<double> animation2) {
        final CurveTween curveTween = CurveTween(curve: Curves.easeIn);
        return FadeTransition(
          opacity: animation.drive(curveTween),
          child: child,
        );
      },
    );
  }
}
