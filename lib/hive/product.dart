import 'package:hive/hive.dart';
part 'product.g.dart';

@HiveType(typeId: 1)
class Product extends HiveObject {
  @HiveField(0)
  String productName;

  @HiveField(1)
  double productPrice;

  Product({required this.productName, required this.productPrice});
}
 