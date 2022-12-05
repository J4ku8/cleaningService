import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class GoogleMap extends StatelessWidget {
  const GoogleMap({super.key});

  @override
  Widget build(BuildContext context) {
    String htmlId = "7";
    LatLng center = LatLng(50.105092, 14.389680);

    List<LatLng> positions = [
      LatLng(50.105092, 14.389680),
      LatLng(50.106092, 14.389680),
      LatLng(50.104092, 14.389680),
      LatLng(50.105092, 14.390680),
      LatLng(50.105092, 14.388680),
    ];

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final mapOptions = MapOptions()
        ..zoom = 15
        ..center = center;

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      for (var element in positions) {
        var marker = Marker(MarkerOptions()
          ..position = element
          ..map = map
          ..title = 'test'
          ..clickable = true);
        final infoWindow = InfoWindow(InfoWindowOptions()..content = 'test');
        marker.onClick.listen((event) => infoWindow.open(map, marker));
      }

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
