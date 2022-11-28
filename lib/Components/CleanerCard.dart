import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';
import 'package:cleaning/model/Service.dart';

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
                  title: const Text('Create Order', style: TextStyle(color: Colors.black45)),
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
                          ),/*
                          CheckboxListTile (
                            title: new Text( "availableServices[index].name",
                            style: TextStyle( color: Colors.black45)),
                            value: false,
                            onChanged: (bool? val) {
                              item.availableServices[0].state = val == null ? false : val;
                            }
                          ),*/
                          /*new ListView.builder(
                            itemCount: item.getServiceCount(),
                            itemBuilder: (BuildContext context, int index) {
                            return new Card(
                              child: new Container(
                                padding: new EdgeInsets.all(10.0),
                                child: Column(
                                  children: <Widget>[
                                    new CheckboxListTile(
                                        activeColor: Colors.pink[300],
                                        dense: true,
                                        //font change
                                        title: new Text(
                                          item.getAvailableServices()[index].name,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5),
                                        ),
                                        value: item.getAvailableServices()[index].state,
                                        onChanged: (bool? val) {
                                         item.getAvailableServices()[index].state = val == null ? false : val;
                                        })
                                  ],
                                ),
                              ),
                            );
                          }
                          ),*/
                          /*CheckboxListTile (
                            title: new Text( item.getAvailableServices()[index].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[index].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[index].state = val == null ? false : val;
                            }
                          ),*/
                          /*
                          for ( Service s in item.getAvailableServices() ) {
                            CheckboxListTile (
                            title: new Text( s.name,
                            style: TextStyle( color: Colors.black45)),
                            value: s.state,
                            onChanged: (bool? val) {
                              s.state = val == null ? false : val;
                            }
                          ),
                          }
                          */

                          /*List.generate(
                      item.getAvailableServices().length,
                      (index) => Container(
                          padding: EdgeInsets.all(5),
                          margin: EdgeInsets.all(10),
                          child: CheckboxListTile(
                            // controlAffinity: ListTileControlAffinity.leading,
                            title: new Text(
                              item.getAvailableServices()[index].name,
                              style: TextStyle(color: Colors.black45),
                            ),
                            value:item.getAvailableServices()[index].state,
                            activeColor: Colors.blue,
                            checkColor: Colors.white,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[index].state = val == null ? false : val;
                            }*/

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
