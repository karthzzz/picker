import 'package:flutter/material.dart';
import 'package:picker/data/picker_data.dart';
import 'package:picker/screen/list_box.dart';

class PickerMainScreen extends StatefulWidget {
  const PickerMainScreen({super.key});

  @override
  State<PickerMainScreen> createState() => _PickerMainScreenState();
}

class _PickerMainScreenState extends State<PickerMainScreen> {
  final _scanController = TextEditingController();

  @override
  void dispose() {
    _scanController.dispose();
    super.dispose();
  }

  void showSnack(String message) {
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        elevation: 2,
        duration: Duration(seconds: 2),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        backgroundColor: pickerColor,
        content: Text(
          message,
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        )));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        title: Text(
          "Orders List",
          style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        surfaceTintColor: Theme.of(context).colorScheme.onPrimary,
        actions: [
          Card(
            borderOnForeground: true,
            shadowColor: Colors.black,
            elevation: 10,
            shape: RoundedRectangleBorder(
              side: const BorderSide(color: Colors.black),
              borderRadius: BorderRadius.circular(10),
            ),
            surfaceTintColor: Colors.white,
            child: TextButton(
              onPressed: () {
                showSnack("signout");
              },
              style: ButtonStyle(
                elevation: MaterialStateProperty.all(10),
                animationDuration: const Duration(milliseconds: 500),
              ),
              child: Image.asset('assets/icons/Vector (3).jpg'),
            ),
          )
        ],
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(6),
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(5),
                    ),
                    color: Color.fromARGB(255, 51, 195, 195),
                  ),
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "ORDERS TO PICK",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineSmall!
                                      .copyWith(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                      ),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  "2",
                                  style: Theme.of(context)
                                      .textTheme
                                      .headlineLarge!
                                      .copyWith(
                                          color: Colors.white,
                                          fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                              ],
                            ),
                            const Spacer(),
                            Image.asset("assets/icons/cart-removebg-preview.png")
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Card(
                  borderOnForeground: true,
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    side: const BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  surfaceTintColor: Colors.white,
                  child: TextField(
                    controller: _scanController,
                    textAlign: TextAlign.center,
                    decoration: InputDecoration(
                      label: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Image.asset("assets/icons/bi_upc-scan.jpg"),
                          const SizedBox(
                            width: 4,
                          ),
                          Text(
                            "SCAN ORDER NUMBER HERE",
                            style: Theme.of(context)
                                .textTheme
                                .titleMedium!
                                .copyWith(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black.withOpacity(0.50)),
                          )
                        ],
                      ),
                      border: UnderlineInputBorder(
                        borderSide: const BorderSide(
                          style: BorderStyle.solid,
                          color: Colors.black,
                        ),
                        borderRadius: BorderRadius.circular(
                          10,
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'List',
                      style: Theme.of(context).textTheme.labelSmall,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 5,
                ),
                const ListBox(
                    header: "#BC324987123948327",
                    eCommRef: 123,
                    customerAccount: "Demo Acctoun1",
                    product: "3",
                    date: "2023-07-23"),
                const SizedBox(
                  height: 5,
                ),
                const ListBox(
                    header: "#BC324987123948327",
                    eCommRef: 123,
                    customerAccount: "Demo Acctoun1",
                    product: "3",
                    date: "2023-07-23")
              ],
            ),
          ),
        ),
      ),
    );
  }
}
