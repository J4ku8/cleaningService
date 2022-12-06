import 'dart:html';

import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart';
import 'dart:ui' as ui;

class GoogleMap extends StatefulWidget {
  final List<Cleaner> dataForMarkers;
  final List<String> filtered;

  const GoogleMap({Key? key, required this.dataForMarkers, required this.filtered})
      : super(key: key);

  @override
  GoogleMapState createState() => GoogleMapState();
}

class GoogleMapState extends State<GoogleMap> {

  @override
  Widget build(BuildContext context) {
    String htmlId = "7";
    LatLng center = LatLng(50.105092, 14.389680);
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
      var showMarker = true;

      for (var element in widget.dataForMarkers) {
        for(var service in element.availableServices){
          if(widget.filtered.length > 0 && !widget.filtered.contains(service)){
            showMarker = false;
          }
        }
        var marker = Marker(MarkerOptions()
          ..position = element.coords
          ..map = map
          ..title = element.name
          ..clickable = true);
        final infoWindow = InfoWindow(InfoWindowOptions()..content = "${element.name} - ${element.address.city}, ${element.address.street}, ${element.address.number}");
        marker.onClick.listen((event) => infoWindow.open(map, marker));
        marker.visible = showMarker;
      }
      return elem;
    });

    return HtmlElementView(viewType: htmlId);
  }
}
