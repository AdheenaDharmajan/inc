import 'package:hive_flutter/hive_flutter.dart';
import 'package:inc/hive/product.dart';
// import 'package:storage/models/product.dart';

class ProductFunctions {
   //Box<Product> productBox;

  // ProductFunctions() {
  //   getproductBox().then((value) => productBox = value);
  // }

  // Future<Box<Product>> getproductBox() async {
  //   final productBox = await Hive.openBox<Product>("products");
  //   return productBox;
  // }

  Future<void> addProduct(Product product) async {
    final productBox = await Hive.openBox<Product>("products");
    productBox.add(product);
  }

  Future<Iterable<Product>> getProducts() async {
    final productBox = await Hive.openBox<Product>("products");
    return productBox.values;
  }

  Future<void> updateProduct(int id, Product product) async {
    final productBox = await Hive.openBox<Product>("products");
    productBox.put(id, product);
  }

  Future<void> removeProduct(int id) async {
    final productBox = await Hive.openBox<Product>("products");
    productBox.delete(id);
  }
}
