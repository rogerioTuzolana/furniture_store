import 'package:app_test/views/screens/home_screen.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: const Color.fromARGB(19, 89, 89, 89),
          title: const Center(
            child: Text(
              'Cart',
              style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
            ),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                ))
          ]),
      body: Column(
        children: [
          Container(
            color: const Color.fromARGB(19, 89, 89, 89),
            height: MediaQuery.of(context).size.height * 0.55,
            child: SingleChildScrollView(
              child: ListView.builder(
                  itemCount: 15,
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: ((context, index) => ListTile(
                        leading: IconButton(
                          icon: Icon(Icons.check_box_outline_blank),
                          onPressed: () {},
                        ),
                        title: Row(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.2,
                              height: MediaQuery.of(context).size.height * 0.09,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(15),
                                child: Image.asset(
                                  'assets/images/1.JPG',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(
                                left: MediaQuery.of(context).size.height * 0.02,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('Minimalist Chair'),
                                  SizedBox(
                                    height: MediaQuery.of(context).size.height *
                                        0.015,
                                  ),
                                  Row(
                                    children: [
                                      const Text(
                                        "\$300,00",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Color.fromARGB(
                                                159, 224, 51, 51),
                                            fontSize: 17),
                                      ),
                                      SizedBox(
                                        width:
                                            MediaQuery.of(context).size.width *
                                                0.17,
                                      ),
                                      Container(
                                        padding: const EdgeInsets.only(
                                            left: 5, right: 5),
                                        decoration: BoxDecoration(
                                          border: Border.all(
                                              style: BorderStyle.solid,
                                              color: Colors.grey),
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(25)),
                                        ),
                                        child: Row(
                                          children: [
                                            InkWell(
                                                onTap: () {},
                                                child: const Icon(
                                                  Icons.remove,
                                                  size: 15,
                                                )),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            const Text(
                                              '1',
                                              style: TextStyle(fontSize: 14),
                                            ),
                                            SizedBox(
                                              width: 3,
                                            ),
                                            InkWell(
                                                onTap: () {},
                                                child: const Icon(
                                                  Icons.add,
                                                  size: 15,
                                                )),
                                          ],
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                        //trailing: Text('Minimalist Chair'),
                      ))),
            ),
          ),
          Container(
            color: const Color.fromARGB(19, 89, 89, 89),
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.35,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 4,
                    offset: const Offset(1, 1), // Posição da sombra
                  ),
                ],
              ),
              //scolor: const Color.fromARGB(19, 89, 89, 89),

              child: Column(
                children: [
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Selected items',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('\$250,00',
                            style: TextStyle(
                                color: Color.fromARGB(159, 224, 51, 51),
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Shipping free',
                          style: TextStyle(
                              color: Colors.black54,
                              fontSize: 15,
                              fontWeight: FontWeight.w500),
                        ),
                        Text('\$30,00',
                            style: TextStyle(
                                color: Color.fromARGB(159, 224, 51, 51),
                                fontWeight: FontWeight.bold,
                                fontSize: 15)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.01,
                  ),
                  SizedBox(
                      width: MediaQuery.of(context).size.width * 0.8,
                      child: Divider(
                        thickness: 1.6,
                      )),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Subtotal',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text('\$265,00',
                            style: TextStyle(
                                color: Colors.redAccent,
                                fontWeight: FontWeight.bold,
                                fontSize: 18)),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: MediaQuery.of(context).size.height * 0.04,
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.8,
                    height: MediaQuery.of(context).size.height * 0.07,
                    child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(Colors.black87)),
                      onPressed: () {},
                      child: const Text(
                        'Checkout',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
