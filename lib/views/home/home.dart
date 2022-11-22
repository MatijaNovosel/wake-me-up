import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class HomeView extends ConsumerStatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  ConsumerState createState() => HomeViewState();
}

class HomeViewState extends ConsumerState<HomeView> {
  final Completer<GoogleMapController> _controller = Completer();

  final CameraPosition _startingPos = const CameraPosition(
    target: LatLng(45.815399, 15.966568),
    zoom: 12,
  );

  void _onMapCreated(GoogleMapController controller) {
    _controller.complete(controller);
  }

  @override
  Widget build(BuildContext context) {
    return GoogleMap(
      zoomControlsEnabled: false,
      mapType: MapType.normal,
      trafficEnabled: true,
      initialCameraPosition: _startingPos,
      onMapCreated: (GoogleMapController controller) => _onMapCreated(controller),
    );
  }
}
