import 'package:testecommerce/bloc/models/product_class.dart';

class Basket
{
  String delivery;
  int id;
  double total;
  List<Product> ? product;

  Basket({required this.id, this.product, required this.delivery, required this.total});

  factory Basket.fromJSON(Map<String, dynamic> json) => Basket(
    id: json['id'],
    delivery: json['delivery'],
    total: json['total'],
    product: List<dynamic>.from(json['basket']).map((e) => Product.fromJSON(e)).toList(),
  );
}