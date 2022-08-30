import 'dart:convert';
import 'package:testecommerce/bloc/models/basket_class.dart';
import 'package:http/http.dart' as http;

class BasketRepository
{
  final api = "https://run.mocky.io/v3/53539a72-3c5f-4f30-bbb1-6ca10d42c149";

  Future<Basket> getBasket() async {
    final response = await http.get(Uri.parse(api));
    if(response.statusCode == 200) {
      return Basket.fromJSON(json.decode(response.body));
    } else {
      throw Exception("Error");
    }
  }
}