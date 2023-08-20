import 'package:flutter/material.dart';

class OrderInformationBox extends StatelessWidget {
  const OrderInformationBox(
      {required this.header,
      required this.eCommRef,
      required this.sender,
      required this.orderDate,
      required this.consigneeName,
      super.key});
  final String header;
  final int eCommRef;
  final String sender;
  final String orderDate;
  final String consigneeName;
  @override
  Widget build(BuildContext context) {
    return Card(
        borderOnForeground: false,
        elevation: 0,
        color: const Color.fromRGBO(238, 238, 238, 1),
        shape: RoundedRectangleBorder(
          side: const BorderSide(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
        ),
        surfaceTintColor: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      header,
                      style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.black, thickness: 1),
            Table(
              border: const TableBorder(
                  horizontalInside: BorderSide(color: Colors.black)),
              children: [
                TableRow(children: [
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text(
                      'eComm Ref:',
                    ),
                  ),
                  Text(
                    eCommRef.toString(),
                    style: Theme.of(context)
                        .textTheme
                        .titleLarge!
                        .copyWith(fontWeight: FontWeight.bold),
                  ),
                ]),
                TableRow(children: [
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text("Sender(Cilent)"),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      sender,
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                TableRow(children: [
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text('Order Date :'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      eCommRef.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
                TableRow(children: [
                  const Padding(
                    padding:  EdgeInsets.all(8.0),
                    child:  Text('Consignee Name :'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      eCommRef.toString(),
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                ]),
              ],
            )
          ],
        ));
  }
}
