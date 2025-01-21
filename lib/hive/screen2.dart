import 'package:flutter/material.dart';
import 'package:inc/hive/product.dart';
import 'package:inc/hive/product_functions.dart';
import 'package:inc/hive/routes.dart';


class Screen2 extends StatefulWidget {
  final Product? product;
  const Screen2({super.key, this.product});

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  final TextEditingController _productController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Product Input Form'),
      ),
      body: widget.product != null
          ? Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _productController,
                    decoration: InputDecoration(
                      hintText: widget.product!.productName,
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _priceController,
                    decoration: InputDecoration(
                      hintText: widget.product!.productPrice.toString(),
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String productName = _productController.text != ""
                          ? _productController.text
                          : widget.product!.productName;
                      String productPrice = _priceController.text != ""
                          ? _priceController.text
                          : widget.product!.productPrice.toString();
                      print(productPrice+"dfqgefhqgtfhgqhjefgfgjhqgfjhgfjhqgfjhqgfjhqgfh");
                       Product product = Product(
                          productName: productName,
                          productPrice: double.parse(productPrice));
                      ProductFunctions()
                          .updateProduct(widget.product!.key, product)
                          .then((value) {
                        Navigator.pushNamed(context, Routes.screen1);
                      });
                      print('Product Name: $productName');
                      print('Product Price: $productPrice');
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            )
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                children: [
                  TextField(
                    controller: _productController,
                    decoration: const InputDecoration(
                      hintText: 'Enter product name',
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextField(
                    controller: _priceController,
                    decoration: const InputDecoration(
                      hintText: 'Enter product price',
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      String productName = _productController.text;
                      String productPrice = _priceController.text;
                      Product product = Product(
                          productName: productName,
                          productPrice: double.parse(productPrice));
                      
                     
                      ProductFunctions().addProduct(product).then((value) {
                        Navigator.pushNamed(context, Routes.screen1);
                      });
                      print('Product Name: $productName');
                      print('Product Price: $productPrice');
                    },
                    child: const Text('Submit'),
                  ),
                ],
              ),
            ),
    );
  }
}


