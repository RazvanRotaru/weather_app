import 'package:flutter/material.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/routing/2.0/inner_router_delegate.dart';

class AppShell extends StatefulWidget {
  const AppShell({Key? key, required this.appState}) : super(key: key);
  final AppState appState;

  @override
  _AppShellState createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  late InnerRouterDelegate _innerRouterDelegate;
  late ChildBackButtonDispatcher? _backButtonDispatcher;

  @override
  void initState() {
    super.initState();
    _innerRouterDelegate = InnerRouterDelegate(widget.appState);
  }

  @override
  void dispose() {
    _innerRouterDelegate.dispose();
    super.dispose();
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _backButtonDispatcher = Router.of(context).backButtonDispatcher?.createChildBackButtonDispatcher();
  }

  @override
  Widget build(BuildContext context) {
    final AppState _state = widget.appState;
    _backButtonDispatcher?.takePriority();

    return Scaffold(
      appBar: AppBar(),
      body: Router<dynamic>(
        routerDelegate: _innerRouterDelegate,
        backButtonDispatcher: _backButtonDispatcher,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.wysiwyg_outlined),
            label: 'Echo',
          ),
        ],
        currentIndex: _state.currentTab,
        onTap: (int index) {
          _state.currentTab = index;
          if (index == 1) {
            _state.text = 'World!';
          }
        },
      ),
    );
  }
}
