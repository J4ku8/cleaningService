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
import 'package:flutter/material.dart';
import 'package:google_maps/google_maps.dart' as google;
import 'maps.dart';

main() {
  runApp(const MyApp());
}

List<String> cleaningOptions = [
    'Zametání',
    'Vytírání',
    'Vysávání',
    'Leštění nábytku',
    'Drhnutí podlah',
    'Ventilace',
    'Zametení zahrady',
    'Lustry',
    'Prach',
    'Čalounění',
    'Mytí oken',
    'Úklid po zvířatech',
];
List<Cleaner> services = [
  new Cleaner("Uklízím celý den", new Address("Tahkulova", "Praha", "160 00", "CZ", 9),
      new google.LatLng(50.10501838533533, 14.388725717003036), r'$$', 5.0, [
        "Po: 08-00-00 - 17-00-00",
        "Út: 08-00-00 - 17-00-00",
        "St: 08-00-00 - 17-00-00",
        "Čt: 08-00-00 - 17-00-00",
        "Pá: 08-00-00 - 17-00-00",
        "So: 08-00-00 - 17-00-00",
        "Ne: -"
      ],
      [],
      [
        Service("Zametání", true, 500),
        Service("Vytírání", true, 600),
        Service("Vysávání", true, 450),
        Service("Leštění nábytku", false, 900),
        Service("Drhnutí podlah", false, 500),
        Service("Ventilace", false, 1000),
        Service("Zametení zahrady", false, 1200),
        Service("Lustry", true, 300),
        Service("Prach", true, 800),
        Service("Čalounění", false, 1000),
        Service("Mytí oken", false, 700),
        Service("Úklid po zvířatech", false, 600),
      ],
      ["Zametání", "Vytírání", "Vysávání", "Lustry", "Prach"]
  ),
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
            ),
            Padding(
              padding: EdgeInsets.all(16.0),
            )
          ],
        ),
        body: SingleChildScrollView(
          child: Center(
            child: Column(
              //mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                // Padding(
                //   padding: const EdgeInsets.symmetric(
                //       vertical: 8.0, horizontal: 0.0),
                //   child: SizedBox(
                //     width: MediaQuery.of(context).size.width * 0.5,
                //     child: Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: <Widget>[
                //           SizedBox(
                //             height: 50,
                //             width: 250,
                //             child: DateTimeFormField(
                //               decoration: const InputDecoration(
                //                 hintStyle: TextStyle(color: Colors.black45),
                //                 errorStyle: TextStyle(color: Colors.redAccent),
                //                 border: OutlineInputBorder(),
                //                 suffixIcon: Icon(Icons.event_note),
                //                 labelText: 'Pick a date and time',
                //               ),
                //               mode: DateTimeFieldPickerMode.dateAndTime,
                //               autovalidateMode: AutovalidateMode.always,
                //               validator: (e) => (e?.day ?? 0) == 1
                //                   ? 'Please not the first day'
                //                   : null,
                //               onDateSelected: (DateTime value) {
                //                 print(value);
                //               },
                //             ),
                //           ),
                //           const SizedBox(
                //             height: 50,
                //             width: 250,
                //             child: TextField(
                //               style: TextStyle(color: Colors.black45),
                //               decoration: InputDecoration(
                //                 border: OutlineInputBorder(),
                //                 hintText: 'Enter a search term',
                //               ),
                //             ),
                //           )
                //         ]),
                //   ),
                // ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 400,
                      width: MediaQuery.of(context).size.width,
                      child: GoogleMap(dataForMarkers: services, filtered: activeFilters),
                    )
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
                        .map((company) => CleanerCard(item: company, activeFilters: activeFilters,))
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
            Center( child:Text("Uživatelský profil", style: TextStyle(color: Colors.black45, fontSize: 25)),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween ,
              children: [
                SizedBox(height: 100),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Jméno',
                  text: user.name,
                  onChanged: (name) {
                    user.name = name;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Příjmení',
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
                  label: 'Telefon',
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
                  label: 'Ulice',
                  text: user.address.street,
                  onChanged: (street) {
                    user.address.street = street;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'Číslo domu',
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
                  label: 'Město',
                  text: user.address.city,
                  onChanged: (city) {
                    user.address.city = city;
                  },
                )),
                SizedBox(width: 50),
                new Flexible( child:
                TextFieldWidget(
                  label: 'PSČ',
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
                      child: Text ("Změnit heslo", style: const TextStyle(color: Colors.white)),
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
                      child: Text ("Uložit a vrátit se na úvodní stránku", style: const TextStyle(color: Colors.white)),
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
