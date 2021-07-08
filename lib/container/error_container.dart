import 'package:flutter/widgets.dart';
import 'package:flutter_redux/flutter_redux.dart';
import 'package:redux/redux.dart';
import 'package:weather_app/models/app_state.dart';

class ErrorContainer extends StatelessWidget {
  const ErrorContainer({Key? key, required this.builder}) : super(key: key);

  final ViewModelBuilder<String?> builder;

  @override
  Widget build(BuildContext context) {
    return StoreConnector<AppState, String?>(
      converter: (Store<AppState> store) {
        return store.state.errorMessage;
      },
      builder: builder,
    );
  }
}
