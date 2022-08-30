import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:testecommerce/bloc/models/product_class.dart';

class ProductRepository
{
  final api = "https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5";

  Future<Product> getProduct() async {
    final response = await http.get(Uri.parse(api));
    if(response.statusCode == 200) {
      return Product.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Error");
    }
  }
}