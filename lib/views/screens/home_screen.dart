import 'package:app_test/views/components/card.dart';
import 'package:app_test/views/components/cardRect.dart';
import 'package:app_test/views/screens/cart_screen.dart';
import 'package:app_test/views/screens/product_screen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _searchController = TextEditingController();

  //final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //backgroundColor: const Color.fromARGB(255, 128, 120, 120),
        backgroundColor: const Color.fromARGB(
            19, 89, 89, 89), //Theme.of(context).colorScheme.inversePrimary,
        leading: Container(
            margin: const EdgeInsets.only(left: 20),
            padding: const EdgeInsets.only(top: 5),
            child: const Icon(Icons.menu)),
        actions: [
          Padding(
            padding: const EdgeInsets.only(top: 5.0),
            child: Container(
              margin: const EdgeInsets.only(right: 20),
              padding: const EdgeInsets.all(2),
              decoration: const BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.all(Radius.circular(6)),
              ),
              child: const Icon(
                Icons.person_3,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
      body: Container(
        color: const Color.fromARGB(19, 89, 89, 89),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width * 0.7,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: const Color.fromARGB(255, 134, 132, 132)
                              .withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 10,
                          offset: const Offset(5, 7), // Posição da sombra
                        ),
                      ],
                      color: Colors.white,
                      borderRadius:
                          const BorderRadius.all(Radius.circular(10))),
                  child: TextField(
                      controller: _searchController,
                      keyboardType: TextInputType.text,
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.search_rounded,
                        ),

                        //filled: true,
                        labelText: 'Search',
                        //floatingLabelBehavior: FloatingLabelBehavior.always,
                        //hintText: 'Search',
                        border: OutlineInputBorder(
                            borderSide: BorderSide.none,
                            borderRadius:
                                BorderRadius.all(Radius.circular(10))),
                        contentPadding: EdgeInsets.fromLTRB(12, 0, 12, 0),
                      )),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.05,
                ),
                IconButton(
                    onPressed: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (context) => const CartScreen(),
                        ),
                      );
                    },
                    icon: const Icon(
                      Icons.shopping_cart_outlined,
                      size: 30,
                    ))
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.04,
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: const Text(
                'Explore',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.02,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  CardComponent(
                    name: "Cadeira Vermelha",
                    price: "\$250,00",
                    image: 'assets/images/1.JPG',
                  ),
                  CardComponent(
                    name: "Cadeira Gamer",
                    price: "\$300,00",
                    image: 'assets/images/3.JPG',
                  ),
                  CardComponent(
                    name: "Cadeira Suave",
                    price: "\$530,00",
                    image: 'assets/images/4.JPG',
                  ),
                ],
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            Container(
              margin: EdgeInsets.only(
                left: MediaQuery.of(context).size.width * 0.06,
              ),
              child: const Text(
                'Best Selling',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              ),
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.03,
            ),
            const CardRectComponent(
              name: "Cadeira Suave",
              price: "\$530,00",
              image: 'assets/images/5.JPG',
              routeTo: ProductScreen(),
            )
          ],
        ),
      ),
    );
  }
}
