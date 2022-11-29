import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';

class CleanerCard extends StatefulWidget {
  final Cleaner item;

  const CleanerCard({Key? key, required this.item}) : super(key: key);

  @override
  CleanerCardState createState() => CleanerCardState();
}

class CleanerCardState extends State<CleanerCard> {
  bool? selectAll = true;
  bool? object = false;

  @override
  Widget build(BuildContext context) {
    Cleaner picked = Cleaner.clone(widget.item);
    // picked.setServicesToFalse();
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
          onPressed: () {
            showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    scrollable: true,
                    title: const Text('Create Order',
                        style: TextStyle(color: Colors.black45)),
                    content: StatefulBuilder(
                        builder: (BuildContext context, StateSetter setState) {
                          return Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Form(
                              child: Column(
                                children: <Widget>[
                                  CheckboxListTile(
                                    title: const Text(
                                      "Clean your object",
                                      style: TextStyle(color: Colors.black45),
                                    ),
                                    autofocus: false,
                                    value: object,
                                    onChanged: (bool? newValue) {
                                      setState(() => object = newValue);
                                    },
                                    controlAffinity: ListTileControlAffinity
                                        .leading, //  <-- leading Checkbox
                                  ),
                                  if (object == false)
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
                                  TextFormField(
                                    decoration: const InputDecoration(
                                      labelText: 'Notes',
                                      icon: Icon(Icons.edit_outlined),
                                    ),
                                  ),
                                  const Padding(
                                    padding: EdgeInsets.only(top: 20),
                                    child: Text('Choose services',
                                        style: TextStyle(
                                            color: Colors.black45)),
                                  ),
                                  SingleChildScrollView(
                                    scrollDirection: Axis.vertical,
                                    child: Column(
                                      children: [
                                        SizedBox(
                                          width: 200,
                                          height: 400,
                                          child: Column(
                                            children: [
                                              SizedBox(
                                                width: 200,
                                                height: 50,
                                                child: CheckboxListTile(
                                                  title: const Text(
                                                    "Select all",
                                                    style: TextStyle(
                                                        color: Colors.black45),
                                                  ),
                                                  autofocus: false,
                                                  value: selectAll,
                                                  onChanged: (bool? newValue) {
                                                    setState(
                                                            () =>
                                                        selectAll = newValue);
                                                    if (newValue == true) {
                                                      picked
                                                          .setServicesToTrue();
                                                    } else {
                                                      picked
                                                          .setServicesToFalse();
                                                    }
                                                  },
                                                  controlAffinity:
                                                  ListTileControlAffinity
                                                      .leading, //  <-- leading Checkbox
                                                ),
                                              ),
                                              SizedBox(
                                                width: 200,
                                                height: 230,
                                                child: ListView.builder(
                                                    itemCount: widget.item
                                                        .availableServices
                                                        .length,
                                                    itemBuilder:
                                                        (BuildContext context,
                                                        int index) {
                                                      if (widget
                                                          .item
                                                          .availableServices[
                                                      index]
                                                          .state ==
                                                          true) {
                                                        return CheckboxListTile(
                                                          title: Text(
                                                            picked
                                                                .availableServices[
                                                            index]
                                                                .name,
                                                            style: const TextStyle(
                                                                color:
                                                                Colors.black45),
                                                          ),
                                                          autofocus: false,
                                                          value: picked
                                                              .availableServices[
                                                          index]
                                                              .state,
                                                          onChanged:
                                                              (bool? newValue) {
                                                            setState(() =>
                                                            picked
                                                                .availableServices[
                                                            index]
                                                                .state =
                                                                newValue);
                                                          },
                                                          controlAffinity:
                                                          ListTileControlAffinity
                                                              .leading, //  <-- leading Checkbox
                                                        );
                                                      } else {
                                                        return Container(
                                                            color: Colors
                                                                .white);
                                                      }
                                                    }),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                    actions: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                              child: const Text("Close"),
                              onPressed: () {
                                Navigator.of(context).pop();
                              }),
                          TextButton(
                              style: TextButton.styleFrom(
                                  backgroundColor: Colors.green,
                                  primary: Colors.white),
                              onPressed: () {
                                // Navigator.of(context).pop();
                                showDialog(
                                    context: context,
                                    builder: (BuildContext context) {
                                      // Future.delayed(Duration(seconds: 2), () {
                                      //   text = "Payed!";
                                      // });
                                      Future.delayed(Duration(seconds: 3), () {
                                        showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              Future.delayed(
                                                Duration(seconds: 3), () {
                                                int count = 0;
                                                Navigator.of(context).popUntil((
                                                    _) => count++ >= 3);
                                              },
                                              );
                                              return const AlertDialog(
                                                scrollable: true,
                                                title: Padding(
                                                  padding: EdgeInsets.all(
                                                      10.0),
                                                  child: Text("Paid!",
                                                      style: TextStyle(
                                                          color: Colors
                                                              .black45)),
                                                ),
                                              );
                                            }
                                        );
                                      });
                                      return const AlertDialog(
                                        scrollable: true,
                                        title: Padding(
                                          padding: EdgeInsets.all(10.0),
                                          child: Text("Proccessing payment",
                                              style: TextStyle(
                                                  color: Colors.black45)),
                                        ),
                                      );
                                    });
                              },
                              child: const Text("Order and pay"))
                        ],
                      ),
                    ],
                  );
                });
          },
          child: Text(
            widget.item.name,
            style: Theme
                .of(context)
                .textTheme
                .headline5,
          ),
        ),
      ),
    );
  }
}
