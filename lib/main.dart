import 'package:cleaning/Components/CleanerCard.dart';
import 'package:cleaning/Components/textfield_widget.dart';
import 'package:cleaning/model/Address.dart';
import 'package:cleaning/model/Cleaner.dart';
import 'package:cleaning/model/LtdLng.dart';
import 'package:cleaning/model/Review.dart';
import 'package:cleaning/model/User.dart';
import 'package:date_field/date_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

List<Cleaner> services = [
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), '&dollar;&dollar;&dollar;', 5.0, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping'
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      '&dollar;&dollar;',
      4.5, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping',
    'gardening'
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
    'poolishin',
    'houseKeeping',
    'gardening'
  ]),
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), '&dollar;&dollar;&dollar;', 5.0, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping'
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      '&dollar;&dollar;',
      4.5, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping',
    'gardening'
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
    'poolishin',
    'houseKeeping',
    'gardening'
  ]),
  new Cleaner("Clean all", new Address("Tahkulova", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0), '&dollar;&dollar;&dollar;', 5.0, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping'
  ]),
  new Cleaner(
      "Clean all inclusive",
      new Address("Na Příkopech", "Praha", "12345", "CZ", 9),
      new LtdLng(20.0, 10.0),
      '&dollar;&dollar;',
      4.5, [
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "08-00-00, 17-00-00",
    "",
    ""
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
    'poolishing',
    'houseKeeping',
    'gardening'
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
    'poolishin',
    'houseKeeping',
    'gardening'
  ]),
];

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
              bodyColor: Colors.white,
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
                  padding: const EdgeInsets.symmetric(
                      vertical: 8.0, horizontal: 0.0),
                  child: GridView.count(
                    primary: false,
                    padding: const EdgeInsets.all(20),
                    crossAxisSpacing: 10,
                    shrinkWrap: true,
                    mainAxisSpacing: 10,
                    crossAxisCount: 2,
                    childAspectRatio: 2,
                    children: List.generate(services.length, (index) {
                      return CleanerCard(item: services[index]);
                    }),
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
  User user = new User( 1, new LtdLng(0001.00, 000.1111), new Address("Hradčanská", "Praha", "123", "CZ", 10), "_password", "Petr", "Adam", "petradam@example.com", "+420 737 542 111");
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
                  onChanged: (name) {},
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Last Name',
                  text: user.surname,
                  onChanged: (surname) {},
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
                  onChanged: (email) {},
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Telephone',
                  text: user.telephone,
                  onChanged: (telephone) {},
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
                  onChanged: (streett) {},
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Streen number',
                  text: user.address.number.toString(),
                  onChanged: (number) {},
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
                  onChanged: (city) {},
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'PSC',
                  text: user.address.psc,
                  onChanged: (psc) {},
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
    