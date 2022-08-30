import 'package:testecommerce/bloc/models/product_class.dart';

class Basket
{
  String delivery;
  int id;
  double total;
  List<Product> ? product;

  Basket({required this.id, this.product, required this.delivery, required this.total});

  factory Basket.fromJSON(Map<String, dynamic> json) => Basket(
    id: int.parse(json['id'].toString()),
    delivery: json['delivery'] as String,
    total: double.parse(json['total'].toString()),
    product: List<dynamic>.from(json['basket']).map((e) => Product.fromJSONBasket(e)).toList(),
  );
}