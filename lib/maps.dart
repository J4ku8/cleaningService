import 'dart:html';

import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class GoogleMap extends StatelessWidget {
  @override
  Widget build(BuildContext context,) {
    String htmlId = "7";
    List<LtdLng> positions = [
      new LtdLng(20.0, 10.0),
      new LtdLng(20.0, 10.0),
      new LtdLng(0001.00, 000.1111),
      new LtdLng(20.0, 12.0),
      new LtdLng(0021.00, 000.1111),
      new LtdLng(0000.00, 000.1111),
      new LtdLng(0000.00, 000.1111),
      new LtdLng(20.0, 10.0),
      new LtdLng(0021.00, 000.1111),
    ]

    // ignore: undefined_prefixed_name
    ui.platformViewRegistry.registerViewFactory(htmlId, (int viewId) {
      final mapOptions = MapOptions()
        ..zoom = 15
        ..center = LatLng(50.105092, 14.389680);

      final elem = DivElement()
        ..id = htmlId
        ..style.width = "100%"
        ..style.height = "100%"
        ..style.border = 'none';

      final map = GMap(elem, mapOptions);

      positions.forEach(() => {
        Marker(MarkerOptions()
          ..icon = _icon
          ..position = gMap.LatLng(35.7560423, 139.7803552)
          ..map = map
          );
      })

      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
