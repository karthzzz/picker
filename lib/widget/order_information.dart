import 'package:flutter/material.dart';
import 'package:picker/data/picker_data.dart';
import 'package:picker/screen/order_information_box.dart';
import 'package:picker/screen/product_detail_box.dart';
 

class OrderInformation extends StatefulWidget {
  const OrderInformation({super.key});

  @override
  State<OrderInformation> createState() => _OrderInformationState();
}

class _OrderInformationState extends State<OrderInformation> {
  final _locationController = TextEditingController();
  final _productController = TextEditingController();

  @override
  void dispose() {
    _locationController.dispose();
    _productController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Card(
                    shadowColor: Colors.black,
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    surfaceTintColor: Colors.white,
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          animationDuration: const Duration(milliseconds: 500),
                        ),
                        child: Row(
                          children: [
                           Image.asset("assets/icons/pajamas_go-back.jpg"),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Back',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        )),
                  ),
                  const Spacer(),
                  Card(
                    shadowColor: Colors.black,
                    elevation: 10,
                    color: Colors.green,
                    shape: RoundedRectangleBorder(
                      side: const BorderSide(color: Colors.black),
                      borderRadius: BorderRadius.circular(10),
                    ),
                     
                    child: TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        style: ButtonStyle(
                          elevation: MaterialStateProperty.all(10),
                          animationDuration: const Duration(milliseconds: 500),
                        ),
                        child: Row(
                          children: [
                          Image.asset("assets/icons/tick.png", height: 25, width: 25, ),
                            const SizedBox(
                              width: 2,
                            ),
                            Text(
                              'Confirm',
                              style: Theme.of(context).textTheme.titleMedium,
                            ),
                          ],
                        )),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Order information",
                      style: Theme.of(context)
                          .textTheme
                          .titleMedium!
                          .copyWith(color: pickerColor),
                    ),
                  ],
                ),
              ),
              const OrderInformationBox(
                  header: "0BCN2023072310027",
                  eCommRef: 123,
                  sender: "Demo Account",
                  orderDate: "2023-07-23",
                  consigneeName: "GS Store"),
              const SizedBox(
                height: 10,
              ),
              Card(
                borderOnForeground: true,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                surfaceTintColor: Colors.white,
                child: TextField(
                  controller: _locationController,
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
                          "SCAN LOCATION HERE",
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
              Card(
                borderOnForeground: true,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  side: const BorderSide(color: Colors.black),
                  borderRadius: BorderRadius.circular(10),
                ),
                surfaceTintColor: Colors.white,
                child: TextField(
                  controller: _productController,
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
                          "SCAN PRODUCT HERE",
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
              Padding(
                padding: const EdgeInsets.only(left: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Product Details",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall!
                          .copyWith(color: pickerColor),
                    ),
                  ],
                ),
              ),
              const ProductDetailBox(
                  header: "90987654321 / SLIM FIT JACKET DEMO PRODUCTS (40)",
                  consigneeName: "Gs Store",
                  p1: "3.0",
                  p2: "0.0"),
              const SizedBox(
                height: 10,
              ),
              const ProductDetailBox(
                  header: "90987654321 / SLIM FIT JACKET DEMO PRODUCTS (40)",
                  consigneeName: "Gs Store",
                  p1: "3.0",
                  p2: "0.0")
            ],
          ),
        ),
      ),
    );
  }
}
