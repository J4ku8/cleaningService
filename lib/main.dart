import 'package:flutter/material.dart';
import 'package:date_field/date_field.dart';
import 'maps.dart';

main() {
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
        primarySwatch: Colors.green,
        textTheme: Theme.of(context).textTheme.apply(
              bodyColor: Colors.white,
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
      body: //SingleChildScrollView(
          /*child:*/ Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
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
                    ]),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 400,
                  width: MediaQuery.of(context).size.width,
                  child: GoogleMap(),
                )
              ],
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 8.0, horizontal: 0.0),
              child: GridView.count(
                primary: false,
                padding: const EdgeInsets.all(20),
                crossAxisSpacing: 10,
                shrinkWrap: true,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                childAspectRatio: 2,
                children: List.generate(15, (index) {
                  return Container(
                    height: 10.0,
                    width: 15.0,
                    decoration: BoxDecoration(
                        color: Colors.white38,
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(color: Colors.green)),
                    child: Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          foregroundColor:
                              MaterialStateProperty.all<Color>(Colors.green),
                          textStyle: MaterialStateProperty.all<TextStyle>(
                              const TextStyle(color: Colors.white)),
                        ),
                        onPressed: () => showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return AlertDialog(
                                scrollable: true,
                                title: const Text('Login'),
                                content: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Form(
                                    child: Column(
                                      children: <Widget>[
                                        TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: 'Name',
                                            icon: Icon(Icons.account_box),
                                          ),
                                        ),
                                        TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: 'Email',
                                            icon: Icon(Icons.email),
                                          ),
                                        ),
                                        TextFormField(
                                          decoration: const InputDecoration(
                                            labelText: 'Message',
                                            icon: Icon(Icons.message),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                actions: [
                                  OutlinedButton(
                                      child: const Text("Close"),
                                      onPressed: () {
                                        Navigator.of(context).pop();
                                      })
                                ],
                              );
                            }),
                        child: Text(
                          'Order',
                          style: Theme.of(context).textTheme.headline5,
                        ),
                      ),
                    ),
                  );
                }),
              ),
            )
          ],
        ),
      ),
    ) /*)*/;
  }
}
