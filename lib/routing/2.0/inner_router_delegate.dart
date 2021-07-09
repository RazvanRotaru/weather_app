import 'package:flutter/cupertino.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/routing/2.0/fade_animation.dart';
import 'package:weather_app/routing/2.0/simple_route_path.dart';
import 'package:weather_app/view/echo_page.dart';
import 'package:weather_app/view/home_page.dart';

class InnerRouterDelegate extends RouterDelegate<SimpleRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<SimpleRoutePath> {
  InnerRouterDelegate(AppState appState) : _state = appState;

  final GlobalKey<NavigatorState> _navigatorKey = GlobalKey<NavigatorState>();
  AppState _state = AppState();

  AppState get appState => _state;

  set appState(AppState state) {
    print('app state changed to $state');

    if (_state == state) {
      return;
    }

    _state = state;
    notifyListeners();
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: _navigatorKey,
      pages: <Page<dynamic>>[
        const FadeAnimationPage(
          child: HomePage(),
          key: ValueKey<String>('home'),
        ),
        if (_state.text != null)
          FadeAnimationPage(
            key: ValueKey<String?>(_state.text),
            child: EchoPage(text: _state.text),
          ),
      ],
      onPopPage: (Route<dynamic> route, dynamic result) {
        _state.text = null;
        notifyListeners();
        return route.didPop(result);
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => _navigatorKey;

  @override
  Future<void> setNewRoutePath(SimpleRoutePath configuration) async {
    assert(false);
  }
}
