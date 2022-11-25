import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:date_field/date_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dáme úklid',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dáme úklid'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.power_settings_new_sharp,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.assignment_sharp,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.bookmarks_sharp,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.notifications_sharp,
              color: Colors.white,
              size: 35,
            ),
            onPressed: () {
              // do something
            },
          ),
          IconButton(
            icon: const Icon(
              Icons.account_circle_sharp,
              color: Colors.white,
              size: 45,
            ),
            onPressed: () {
              // do something
            },
          )
        ],
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
              child: SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                  child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: <Widget>[
                    SizedBox(
                      height: 50,
                      width: 250,
                      child: DateTimeFormField(
                        decoration: const InputDecoration(
                          hintStyle: TextStyle(color: Colors.black45),
                          errorStyle: TextStyle(color: Colors.redAccent),
                          border: OutlineInputBorder(),
                          suffixIcon: Icon(Icons.event_note),
                          labelText: 'Pick a date and time',
                        ),
                        mode: DateTimeFieldPickerMode.dateAndTime,
                        autovalidateMode: AutovalidateMode.always,
                        validator: (e) =>
                            (e?.day ?? 0) == 1 ? 'Please not the first day' : null,
                        onDateSelected: (DateTime value) {
                          print(value);
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                      width: 250,
                      child: TextField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Enter a search term',
                        ),
                      ),
                    )
                  ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                    height: 300,
                    width: MediaQuery.of(context).size.width,
                    child: FlutterMap(
                      options: MapOptions(
                        center: LatLng(50.105092, 14.389680),
                        zoom: 15,
                      ),
                      nonRotatedChildren: [
                        AttributionWidget.defaultWidget(
                          source: 'OpenStreetMap contributors',
                          onSourceTapped: null,
                        ),
                      ],
                      children: [
                        TileLayer(
                          urlTemplate:
                              'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                          userAgentPackageName: 'com.example.app',
                        ),
                      ],
                    ))
              ],
            ),
            // Padding(
            //   padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
            //   child:
            //     GridView.count(
            //       // Create a grid with 2 columns. If you change the scrollDirection to
            //       // horizontal, this produces 2 rows.
            //       crossAxisCount: 2,
            //       // Generate 100 widgets that display their index in the List.
            //       children: List.generate(100, (index) {
            //         return SizedBox(
            //           height: 300,
            //           width: MediaQuery.of(context).size.width/3,
            //           child: Center(
            //             child: Text(
            //               'Item $index',
            //               style: Theme.of(context).textTheme.headline5,
            //             ),
            //           ),
            //         );
            //       }),
            //     ),
            // )
          ],
        ),
      ),
    );
  }
}
