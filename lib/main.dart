import 'dart:developer';
import 'dart:html';

import 'package:cleaning/Components/CleanerCard.dart';
import 'package:cleaning/Components/textfield_widget.dart';
import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/Cleaner.dart';
import 'package:cleaning/model/LtdLng.dart';
import 'package:cleaning/model/Review.dart';
import 'package:cleaning/model/Service.dart';
import 'package:cleaning/model/User.dart';
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
    Service("Sweeping", true, 500),
    Service("Mopping", true, 600),
    Service("Vacuuming", true, 450),
    Service("Polishing", false, 900),
    Service("Scrubbing", false, 500),
    Service("Vent cleaning", false, 1000),
    Service("Gardening", false, 1200),
    Service("Light Fixtures", true, 300),
    Service("Furniture", true, 800),
    Service("Deep Cleaning", false, 1000),
    Service("Window Cleaning", false, 700),
    Service("Pet Cleaning", false, 600),
  ],["Sweeping","Mopping","Vacuuming",
        "Light Fixtures","Furniture"]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      5, [
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
        3)
  ], [
    Service("Sweeping", true, 300),
    Service("Mopping", true, 400),
    Service("Vacuuming", true, 300),
    Service("Polishing", true, 500),
    Service("Scrubbing", true, 600),
    Service("Vent cleaning", true, 800),
    Service("Gardening", true, 1000),
    Service("Light Fixtures", true, 200),
    Service("Furniture", true, 300),
    Service("Deep Cleaning", true, 600),
    Service("Window Cleaning", true, 400),
    Service("Pet Cleaning", true, 500),
  ],
      ["Sweeping","Mopping","Vacuuming","Polishing","Scrubbing","Vent cleaning",
        "Gardening","Light Fixtures","Furniture","Deep Cleaning","Window Cleaning",
        "Pet Cleaning",]),
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
        2.0)
  ], [
    Service("Sweeping", true, 300),
    Service("Mopping", true, 300),
    Service("Vacuuming", true, 300),
    Service("Polishing", false, 300),
    Service("Scrubbing", false, 400),
    Service("Vent cleaning", false, 600),
    Service("Gardening", false, 800),
    Service("Light Fixtures", true, 150),
    Service("Furniture", true, 400),
    Service("Deep Cleaning", false, 600),
    Service("Window Cleaning", false, 300),
    Service("Pet Cleaning", false, 300),
  ],["Sweeping","Mopping","Vacuuming",
    "Light Fixtures","Furniture"]),
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
        4)
  ], [
    Service("Sweeping", true, 500),
    Service("Mopping", true, 600),
    Service("Vacuuming", true, 600),
    Service("Polishing", false, 500),
    Service("Scrubbing", false, 500),
    Service("Vent cleaning", false, 1000),
    Service("Gardening", false, 1100),
    Service("Light Fixtures", true, 250),
    Service("Furniture", true, 400),
    Service("Deep Cleaning", false, 800),
    Service("Window Cleaning", false, 500),
    Service("Pet Cleaning", false, 800),
  ],["Sweeping","Mopping","Vacuuming",
        "Light Fixtures","Furniture"]),
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
    Service("Sweeping", true, 500),
    Service("Mopping", true, 600),
    Service("Vacuuming", true, 450),
    Service("Polishing", false, 900),
    Service("Scrubbing", false, 500),
    Service("Vent cleaning", false, 1000),
    Service("Gardening", false, 1200),
    Service("Light Fixtures", true, 300),
    Service("Furniture", true, 800),
    Service("Deep Cleaning", false, 1000),
    Service("Window Cleaning", false, 700),
    Service("Pet Cleaning", false, 600),
  ],["Sweeping","Mopping","Vacuuming",
        "Light Fixtures","Furniture"]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      r'$$',
      5, [
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
        3)
  ], [
    Service("Sweeping", true, 300),
    Service("Mopping", true, 400),
    Service("Vacuuming", true, 300),
    Service("Polishing", true, 500),
    Service("Scrubbing", true, 600),
    Service("Vent cleaning", true, 800),
    Service("Gardening", true, 1000),
    Service("Light Fixtures", true, 200),
    Service("Furniture", true, 300),
    Service("Deep Cleaning", true, 600),
    Service("Window Cleaning", true, 400),
    Service("Pet Cleaning", true, 500),
  ], ["Sweeping","Mopping","Vacuuming",
    "Light Fixtures","Furniture"]),
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
        2.0)
  ], [
    Service("Sweeping", true, 300),
    Service("Mopping", true, 300),
    Service("Vacuuming", true, 300),
    Service("Polishing", false, 300),
    Service("Scrubbing", false, 400),
    Service("Vent cleaning", false, 600),
    Service("Gardening", false, 800),
    Service("Light Fixtures", true, 150),
    Service("Furniture", true, 400),
    Service("Deep Cleaning", false, 600),
    Service("Window Cleaning", false, 300),
    Service("Pet Cleaning", false, 300),
  ], ["Sweeping","Mopping","Vacuuming",
    "Light Fixtures","Furniture"]),
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
        4)
  ], [
    Service("Sweeping", true, 500),
    Service("Mopping", true, 600),
    Service("Vacuuming", true, 600),
    Service("Polishing", false, 500),
    Service("Scrubbing", false, 500),
    Service("Vent cleaning", false, 1000),
    Service("Gardening", false, 1100),
    Service("Light Fixtures", true, 250),
    Service("Furniture", true, 400),
    Service("Deep Cleaning", false, 800),
    Service("Window Cleaning", false, 500),
    Service("Pet Cleaning", false, 800),
  ],["Sweeping","Mopping","Vacuuming",
        "Light Fixtures","Furniture"]),
];


User user = new User( 1, new LtdLng(0001.00, 000.1111), new Address("Hradčanská", "Praha", "123", "CZ", 10), "_password", "Petr", "Adam", "petradam@example.com", "+420 737 542 111");

Cleaner picked = Null as Cleaner;

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
      //home: const EditProfilePage(), // TODO change back to MyHomePage
      home: const MyHomePage(), // TODO change back to MyHomePage
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
    return services
        .where((company) => Set.of(company.stringServices)
            .containsAll(activeFilters))
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfilePage()),
                );
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
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                  child: GridView.count(
                    primary: false,
                    crossAxisCount: 4,
                    childAspectRatio: 10,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    shrinkWrap: true,
                    children: List.generate(cleaningOptions.length, (index) {
                      return CheckboxListTile(
                        value: filterCheckboxState[index],
                        onChanged: (value) => {
                          filterCheckboxState[index] = value!,
                          setState(() {}),
                          if (value)
                            activeFilters.add(cleaningOptions[index])
                          else
                            activeFilters.remove(cleaningOptions[index])
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

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {

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
                Navigator.pop(context);
              },
            )
          ],
        ),
        body: ListView(
          padding: EdgeInsets.symmetric(horizontal: 32),
          physics: BouncingScrollPhysics(),
          children: [
            Center( child:Text("User settings", style: TextStyle(color: Colors.black45, fontSize: 25)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                SizedBox(height: 100),
                new Flexible( child:
                TextFieldWidget(
                  label: 'First Name',
                  text: user.name,
                  onChanged: (name) {
                    user.name = name;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Last Name',
                  text: user.surname,
                  onChanged: (surname) {
                    user.surname = surname;
                  },
                )),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 100),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Email',
                  text: user.email,
                  onChanged: (email) {
                    user.email = email;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Telephone',
                  text: user.telephone,
                  onChanged: (telephone) {
                    user.telephone = telephone;
                  },
                )),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 100),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Street',
                  text: user.address.street,
                  onChanged: (street) {
                    user.address.street = street;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Streen number',
                  text: user.address.number.toString(),
                  onChanged: (number) {
                    user.address.number = int.parse(number);
                  },
                )),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 100),
                new Flexible( child:
                TextFieldWidget(
                  label: 'City',
                  text: user.address.city,
                  onChanged: (city) {
                    user.address.city = city;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'PSC',
                  text: user.address.psc,
                  onChanged: (psc) {
                    user.address.psc = psc;
                  },
                )),
              ]
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(height: 120),
                Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.grey),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(color: Colors.white)),
                      ),
                      child: Text ("Change password", style: const TextStyle(color: Colors.white)),
                      onPressed: () {}
                    )
                  )
                ),
                Spacer(),
                Container(
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
                        textStyle: MaterialStateProperty.all<TextStyle>(
                            const TextStyle(color: Colors.white)),
                      ),
                      child: Text ("Save and return to Home", style: const TextStyle(color: Colors.white)),
                      onPressed: () {
                        Navigator.pop(context);
                      }
                    )
                  )
                )
              ]
            )

          ],
        ),
      );
  }




}
