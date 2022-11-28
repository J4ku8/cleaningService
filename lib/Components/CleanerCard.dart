import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';

class CleanerCard extends StatelessWidget {
  final Cleaner item;

  CleanerCard({required this.item});

  @override
  Widget build(BuildContext context) {
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
            foregroundColor: MaterialStateProperty.all<Color>(Colors.green),
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
            item.name,
            style: Theme.of(context).textTheme.headline5,
          ),
        ),
      ),
    );
  }
}
