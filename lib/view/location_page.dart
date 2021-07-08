import 'package:flutter/material.dart';
import 'package:weather_app/container/loading_container.dart';
import 'package:weather_app/container/location_container.dart';
import 'package:weather_app/models/location.dart';
import 'package:weather_app/view/page_scaffold.dart';

class LocationPage extends StatelessWidget {
  const LocationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PageScaffold(
      index: 1,
      title: 'Location',
      body: LocationContainer(
        builder: (BuildContext context, Location? location) {
          return LoadingContainer(
            builder: (BuildContext context, bool isLoading) {
              if (isLoading) {
                return const Center(child: CircularProgressIndicator());
              }
              return Column(
                children: <Widget>[
                  Text(location!.city!),
                  Text(location.country!),
                ],
              );
            },
          );
        },
      ),
    );
  }
}
