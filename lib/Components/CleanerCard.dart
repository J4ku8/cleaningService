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
                              labelText: 'Address',
                              icon: Icon(Icons.place),
                            ),
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              labelText: 'Area',
                              icon: Icon(Icons.crop_16_9),
                            ),
                          ),
                          Text(
                            'Choose services', style: TextStyle(color: Colors.black45
                            )
                          ),
                          //List<Service> availableServicesMock = [new Service("Sweeping", true), new Service("Mopping", true), new Service("Vacuuming", true), new Service("Polishing", false), new Service("Scrubbing", false), new Service("Vent cleaning", false), new Service("Gardening", false), new Service("Light Fixtures", true), new Service("Furniture", true), new Service("Deep Cleaning", false), new Service("Window Cleaning", true), new Service("Pet Cleaning", false)];
                          CheckboxListTile (
                            title: new Text( "availableServices[index].name",
                            style: TextStyle( color: Colors.black45)),
                            value: false,
                            onChanged: (bool? val) {
                              item.availableServices[0].state = val;
                            }
                          ),
                          /*CheckboxListTile (
                            title: new Text( availableServices[index].name,
                            style: TextStyle( color: Colors.black45)),
                            value: availableServices[index].state,
                            onChanged: (bool val) {
                              availableServices[index].state = val;
                            }
                          ),*/
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
