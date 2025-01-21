import 'package:flutter/material.dart';
import 'package:inc/hive/product.dart';
import 'package:inc/hive/product_functions.dart';
import 'package:inc/hive/routes.dart';
import 'package:inc/hive/screen2.dart';

class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  List<Product> products = [];

  @override
  void initState() {
    super.initState();
    _loadProducts();
  }

  // Load products initially
  void _loadProducts() {
    ProductFunctions().getProducts().then((value) {
      setState(() {
        products = value.toList();
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Products')),
      body: Column(
        children: [
          SizedBox(
            height: 200,
            child: Center(
              child: MaterialButton(
                onPressed: () {
                  Navigator.pushNamed(context, Routes.screen2);
                },
                child: const Text("Add products"),
                color: Colors.blue,
              ),
            ),
          ),
          Expanded(
            child: products.isEmpty
                ? const Center(
                    child: Text("No products"),
                  )
                : ListView.builder(
                    itemCount: products.length,
                    itemBuilder: (context, index) {
                      return Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(products[index].productName),
                          Text(products[index].productPrice.toString()),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.blue),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Screen2(
                                    product: products[index],
                                  ),
                                ),
                              );
                            },
                            child: const Text("Edit"),
                          ),
                          TextButton(
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(
                                  Colors.red),
                            ),
                            onPressed: () {
                              ProductFunctions()
                                  .removeProduct(products[index].key)
                                  .then((v) {
                                _loadProducts(); // Reload products after delete
                              });
                            },
                            child: const Text("Delete"),
                          ),
                        ],
                      );
                    },
                  ),
          ),
        ],
      ),
    );
  }
}
