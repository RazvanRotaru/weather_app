import 'package:redux/redux.dart';
import 'package:weather_app/actions/get_location.dart';
import 'package:weather_app/data/location_api.dart';
import 'package:weather_app/models/app_state.dart';
import 'package:weather_app/models/location.dart';

class LocationMiddleware {
  LocationMiddleware({required LocationApi api}) : _api = api;
  final LocationApi _api;

  List<Middleware<AppState>> get middleware {
    return <Middleware<AppState>>[
      TypedMiddleware<AppState, GetLocationAction>(_getLocation),
    ];
  }

  Future<void> _getLocation(Store<AppState> store, GetLocationAction action, NextDispatcher next) async {
    next(action);

    try {
      final Location location = await _api.getLocation();
      store.dispatch(GetLocationSuccessful(location));
    } catch (error) {
      store.dispatch(GetLocationError(error));
    }
  }
}
