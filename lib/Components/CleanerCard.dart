import 'package:cleaning/model/Cleaner.dart';
import 'package:flutter/material.dart';

class CleanerCard extends StatelessWidget {
  final Cleaner item;

  CleanerCard({required this.item});

  @override
  Widget build(BuildContext context) {
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
                        title: Text(item.name),
                        horizontalTitleGap: 0,
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 0, horizontal: 0),
                      ),
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        width: 150,
                        child: Text(
                            "${item.address.city} ${item.address.street} ${item.address.number}, ${item.address.country}",
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
                              index < item.ranking.toInt()
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
                          itemCount: item.availability.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Text("${item.availability[index]}\n",
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
                          itemCount: item.availableServices.length,
                          scrollDirection: Axis.vertical,
                          itemBuilder: (context, index) {
                            return SizedBox(
                              child: Text("${item.availableServices[index]}\n",
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
                        child: Text(item.prizeCategory.toString(),
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
                          /* ... */
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
