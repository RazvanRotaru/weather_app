import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/routing/2.0/app_shell.dart';
import 'package:weather_app/routing/2.0/simple_route_path.dart';

class SimpleRouterDelegate extends RouterDelegate<SimpleRoutePath>
    with ChangeNotifier, PopNavigatorRouterDelegateMixin<SimpleRoutePath> {
  SimpleRouterDelegate() : navigationKey = GlobalKey<NavigatorState>() {
    _state.addListener(notifyListeners);
  }

  final GlobalKey<NavigatorState> navigationKey;
  final AppState _state = AppState();

  @override
  SimpleRoutePath get currentConfiguration {
    if (_state.currentTab == 0) {
      return HomePath();
    } else {
      return EchoPath(_state.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigationKey,
      pages: <MaterialPage<Widget>>[
        MaterialPage<Widget>(child: AppShell(appState: _state)),
      ],
      onPopPage: (Route<dynamic> route, dynamic result) {
        if (!route.didPop(result)) {
          return false;
        }

        if (_state.text != null) {
          _state.text = null;
        }

        notifyListeners();
        return true;
      },
    );
  }

  @override
  GlobalKey<NavigatorState>? get navigatorKey => navigationKey;

  @override
  Future<void> setNewRoutePath(SimpleRoutePath configuration) async {
    print('simple_router_configuration: $configuration');
    if (configuration is HomePath) {
      _state.currentTab = 0;
      _state.text = null;
    } else {
      if (configuration is EchoPath) {
        _state.currentTab = 1;
        _state.text = configuration.text;
      }
    }
  }
}
