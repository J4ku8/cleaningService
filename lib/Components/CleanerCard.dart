import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';

import '../model/Service.dart';

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
    List<Service> listOfAvailableServices = [];
    Cleaner picked = Cleaner.clone(widget.item);
    picked.availableServices.forEach((element) {
      if(element.state == true){
        listOfAvailableServices.add(element);
      }
    });
    // picked.setServicesToFalse();
    return Container(
      decoration: BoxDecoration(
          color: Colors.white38,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Colors.green)),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
          child: Flexible(
            flex: 1,
            fit: FlexFit.tight,
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.all(0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    SizedBox(
                      width: 130,
                      child: ListTile(
                        title: Text(widget.item.name),
                        horizontalTitleGap: 0,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: 150,
                        child: Text(
                            "${widget.item.address.city} ${widget.item.address.street} ${widget.item.address.number}, ${widget.item.address.country}",
                            style: const TextStyle(
                                fontSize: 13,
                                height: 1,
                                color: Colors.black38,
                                fontWeight: FontWeight.w400))),
                    SizedBox(
                        width: 80,
                        child: Row(
                          // mainAxisSize: MainAxisSize.min,
                          children: List.generate(5, (index) {
                            return Icon(
                              index < widget.item.ranking.toInt()
                                  ? Icons.star
                                  : Icons.star_border,
                              color: Colors.amber,
                              size: 15.0,
                            );
                          }),
                          // children: [
                          //   Text(item.ranking.toString()),
                          // ],
                        )),
                  ],
                ),
              ),
              Flexible(
                // child: FittedBox(
                fit: FlexFit.loose,
                child: Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 0, horizontal: 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 200,
                        child: ListView.builder(
                          // padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          itemCount: widget.item.availability.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Text("${widget.item.availability[index]}\n",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      height:
                                          0.9 //You can set your custom height here
                                      )),
                            ); //Any widget you want to use.
                          },
                        ),
                      ),
                      Container(
                        width: 60,
                        alignment: Alignment.topRight,
                        child: const Text("Services: ",
                            style: TextStyle(
                                fontSize: 13,
                                height: 1,
                                fontWeight: FontWeight.w400)),
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.topLeft,
                        child: ListView.builder(
                          // padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
                          itemCount: listOfAvailableServices.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Text("${listOfAvailableServices[index].name}\n",
                                  style: const TextStyle(
                                      fontSize: 13,
                                      height:
                                          0.9 //You can set your custom height here
                                      )),
                            ); //Any widget you want to use.
                          },
                        ),
                      ),
                    ],
                  ),
                ),
                // ),
              ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        alignment: Alignment.centerLeft,
                        child: Text(widget.item.prizeCategory.toString(),
                            style: const TextStyle(
                                fontWeight: FontWeight.w600,
                                fontSize: 12,
                                height: 0.5,
                                color: Colors.black54))),
                    Container(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Colors.green,
                            primary: Colors.white),
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
                        child: const Text('Order'),
                      ),
                    ),
                  ],
                ),
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
