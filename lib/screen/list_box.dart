import 'package:flutter/material.dart';
import 'package:picker/data/picker_data.dart';
import 'package:picker/widget/order_information.dart';
 

class ListBox extends StatelessWidget {
  const ListBox({
    required this.header,
    required this.eCommRef,
    required this.customerAccount,
    super.key,
    required this.product,
    required this.date,
  });

  final String header;
  final int eCommRef;
  final String customerAccount;
  final String product;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
        borderOnForeground: true,
        shadowColor: Colors.black,
        elevation: 5,
        shape: RoundedRectangleBorder(
          side: BorderSide(color: Colors.black),
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
                  InkWell(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                          builder: (ctx) => OrderInformation()));
                    },
                    child: Text(
                      header,
                      style: Theme.of(context)
                          .textTheme
                          .headlineSmall!
                          .copyWith(color: pickerColor , fontWeight: FontWeight.bold),
                    ),
                  ),
                ],
              ),
            ),
            const Divider(color: Colors.black, thickness: 0.5),
            Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Table(
                children: [
                  // ignore: prefer_const_constructors
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Text(
                        'eComm Ref',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Color.fromARGB(104, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 5),
                      child: Text(
                        "Customer",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: const Color.fromARGB(104, 0, 0, 0)),
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        eCommRef.toString(),
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        customerAccount,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 10, left: 5),
                      child: Text(
                        'Products',
                        style: Theme.of(context)
                            .textTheme
                            .labelLarge!
                            .copyWith(color: Color.fromARGB(104, 0, 0, 0)),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, right: 5),
                      child: Text(
                        "Date",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: const Color.fromARGB(104, 0, 0, 0)),
                      ),
                    )
                  ]),
                  TableRow(children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 5),
                      child: Text(
                        product,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Text(
                        date,
                        style: Theme.of(context).textTheme.titleLarge,
                      ),
                    ),
                  ])
                ],
              ),
            ),
          ],
        ));
  }
}
