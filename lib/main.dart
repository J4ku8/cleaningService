import 'package:cleaning/Components/CleanerCard.dart';
import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/Cleaner.dart';
import 'package:cleaning/model/LtdLng.dart';
import 'package:cleaning/model/Review.dart';
import 'package:cleaning/model/User.dart';
import 'package:cleaning/model/Service.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

List<String> cleaningOptions = [
  'Sweeping',
  'Mopping',
  'Vacuuming',
  'Polishing',
  'Scrubbing',
  'Vent cleaning',
  'Gardening',
  'Light Fixtures',
  'Furniture',
  'Deep Cleaning',
  'Window Cleaning',
  'Pet Cleaning',
];

List<Cleaner> services = [
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), r'$$$', 5.0, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: 08-00-00 - 17-00-00",
    "Sun: -"
  ], [
    new Review(
        "Clean all",
        new User(
            0,
            new LtdLng(0000.00, 000.1111),
            new Address("Downing Street", "London", "123", "GB", 10),
            "_password",
            "Jan",
            "Petželka"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      4.5, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean not all",
        new User(
            1,
            new LtdLng(0001.00, 000.1111),
            new Address("Hradčanská", "Praha", "123", "CZ", 10),
            "_password",
            "Petr",
            "Adam"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", true),
    Service("Scrubbing", true),
    Service("Vent cleaning", true),
    Service("Gardening", true),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", true),
    Service("Window Cleaning", true),
    Service("Pet Cleaning", true),
  ]),
  new Cleaner(
      "Poolish it!",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 8),
      new LtdLng(20.0, 12.0),
      r'$',
      4.7, [
    "Mon: -",
    "Tue: -",
    "Wen: -",
    "Thr: -",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: 08-00-00 - 17-00-00",
    "Sun: 08-00-00 - 17-00-00"
  ], [
    new Review(
        "Poolish it!",
        new User(
            2,
            new LtdLng(0021.00, 000.1111),
            new Address("Vysočanská", "Praha", "123", "CZ", 221),
            "_password",
            "Adam",
            "Petr"),
        "25.11.2022",
        3.0)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), r'$$$', 5.0, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean all",
        new User(
            0,
            new LtdLng(0000.00, 000.1111),
            new Address("Downing Street", "London", "123", "GB", 10),
            "_password",
            "Jan",
            "Petželka"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      4.5, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: -",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean not all",
        new User(
            1,
            new LtdLng(0001.00, 000.1111),
            new Address("Hradčanská", "Praha", "123", "CZ", 10),
            "_password",
            "Petr",
            "Adam"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), r'$$$', 5.0, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: 08-00-00 - 17-00-00",
    "Sun: -"
  ], [
    new Review(
        "Clean all",
        new User(
            0,
            new LtdLng(0000.00, 000.1111),
            new Address("Downing Street", "London", "123", "GB", 10),
            "_password",
            "Jan",
            "Petželka"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      4.5, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean not all",
        new User(
            1,
            new LtdLng(0001.00, 000.1111),
            new Address("Hradčanská", "Praha", "123", "CZ", 10),
            "_password",
            "Petr",
            "Adam"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Poolish it!",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 8),
      new LtdLng(20.0, 12.0),
      r'$',
      4.7, [
    "Mon: -",
    "Tue: -",
    "Wen: -",
    "Thr: -",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: 08-00-00 - 17-00-00",
    "Sun: 08-00-00 - 17-00-00"
  ], [
    new Review(
        "Poolish it!",
        new User(
            2,
            new LtdLng(0021.00, 000.1111),
            new Address("Vysočanská", "Praha", "123", "CZ", 221),
            "_password",
            "Adam",
            "Petr"),
        "25.11.2022",
        3.0)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), r'$$$', 5.0, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: 08-00-00 - 17-00-00",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean all",
        new User(
            0,
            new LtdLng(0000.00, 000.1111),
            new Address("Downing Street", "London", "123", "GB", 10),
            "_password",
            "Jan",
            "Petželka"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      4.5, [
    "Mon: 08-00-00 - 17-00-00",
    "Tue: 08-00-00 - 17-00-00",
    "Wen: -",
    "Thr: 08-00-00 - 17-00-00",
    "Fri: 08-00-00 - 17-00-00",
    "Sat: -",
    "Sun: -"
  ], [
    new Review(
        "Clean not all",
        new User(
            1,
            new LtdLng(0001.00, 000.1111),
            new Address("Hradčanská", "Praha", "123", "CZ", 10),
            "_password",
            "Petr",
            "Adam"),
        "25.11.2022",
        3.5)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
  new Cleaner(
      "Poolish it!",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 8),
      new LtdLng(20.0, 12.0),
      '&dollar;',
      4.7, [
    "08-00-00, 17-00-00",
    "",
    "",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
  ], [
    new Review(
        "Poolish it!",
        new User(
            2,
            new LtdLng(0021.00, 000.1111),
            new Address("Vysočanská", "Praha", "123", "CZ", 221),
            "_password",
            "Adam",
            "Petr"),
        "25.11.2022",
        3.0)
  ], [
    Service("Sweeping", true),
    Service("Mopping", true),
    Service("Vacuuming", true),
    Service("Polishing", false),
    Service("Scrubbing", false),
    Service("Vent cleaning", false),
    Service("Gardening", false),
    Service("Light Fixtures", true),
    Service("Furniture", true),
    Service("Deep Cleaning", false),
    Service("Window Cleaning", false),
    Service("Pet Cleaning", false),
  ]),
];

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dáme úklid',
      theme: ThemeData(
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.black87,
            ),
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
  List<String> activeFilters = [];
  List<bool> filterCheckboxState =
      List.generate(cleaningOptions.length, (e) => false);

  List<Cleaner> filteredCompanies() {
    if (activeFilters.isEmpty) return services;
    var filter = List.generate(
        activeFilters.length, (index) => Service(activeFilters[index], true));
    return services
        .where(
            (company) => Set.of(company.availableServices).containsAll(filter))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
          title: const Text('Dáme úklid'),
          backgroundColor: Colors.green,
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
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 0.0),
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: <Widget>[
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
                              validator: (e) => (e?.day ?? 0) == 1
                                  ? 'Please not the first day'
                                  : null,
                              onDateSelected: (DateTime value) {
                                print(value);
                              },
                            ),
                          ),
                          const SizedBox(
                            height: 50,
                            width: 250,
                            child: TextField(
                              style: TextStyle(color: Colors.black45),
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
                /*Row(mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(cleaningOptions.length, (index) {
                    return CheckboxListTile(
                      value: filterCheckboxState[index],
                      onChanged: (value) => {
                        filterCheckboxState[index] = value!,
                        if (value)
                          activeFilters
                              .add(cleaningOptions[index].toLowerCase())
                        else
                          activeFilters
                              .remove(cleaningOptions[index].toLowerCase())
                      },
                      title: Text(cleaningOptions[index]),
                    );
                  }),
                )*/
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 0.0),
                  child: GridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 3,
                    children: List.generate(cleaningOptions.length, (index) {
                      return CheckboxListTile(
                        value: filterCheckboxState[index],
                        onChanged: (value) => {
                          filterCheckboxState[index] = value!,
                          if (value)
                            activeFilters
                                .add(cleaningOptions[index].toLowerCase())
                          else
                            activeFilters
                                .remove(cleaningOptions[index].toLowerCase())
                        },
                        title: Text(cleaningOptions[index]),
                      );
                    }),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 0.0),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    children: filteredCompanies()
                        .map((company) => CleanerCard(item: company))
                        .toList(),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
