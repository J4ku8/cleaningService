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
                            
                          ),




                          /*
                          CheckboxListTile (
                            title: new Text( "availableServices[index].name",
                            style: TextStyle( color: Colors.black45)),
                            value: false,
                            onChanged: (bool? val) {
                              item.availableServices[0].state = val == null ? false : val;
                            }
                          ),*/


                          /*CheckboxListTile (
                            title: new Text( item.getAvailableServices()[0].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[0].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[0].state = val == null ? false : val;
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

                          /*new ListView.builder(
                            itemCount: item.availableServices.length,
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
                                          item.availableServices[index].name,
                                          style: TextStyle(
                                              fontSize: 14,
                                              fontWeight: FontWeight.w600,
                                              letterSpacing: 0.5),
                                        ),
                                        value: item.availableServices[index].state,
                                        onChanged: (bool? val) {
                                         item.availableServices[index].state = val == null ? false : val;
                                        })
                                  ],
                                ),
                              ),
                            );
                          }
                          ),*/
                          /*
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[0].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[0].state,
                            onChanged: (bool? val) {
                              if ( val == true)
                                item.getAvailableServices()[0].state = false;
                              else 
                                item.getAvailableServices()[0].state = true;
                            }
                          ),
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[1].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[1].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[1].state = val == null ? true : !val;
                            }
                          ),
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[2].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[2].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[2].state = val == null ? true : !val;
                            }
                          ),
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[3].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[3].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[3].state = val == null ? true : !val;
                            }
                          ),
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[4].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[4].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[4].state = val == null ? true : !val;
                            }
                          ),
                          */
                          /*
                          CheckboxListTile (
                            title: new Text( item.getAvailableServices()[5].name,
                            style: TextStyle( color: Colors.black45)),
                            value: item.getAvailableServices()[5].state,
                            onChanged: (bool? val) {
                              item.getAvailableServices()[5].state = val == null ? true : !val;
                            }
                          ),
                          */
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
