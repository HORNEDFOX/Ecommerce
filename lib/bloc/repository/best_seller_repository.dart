import 'dart:convert';
import 'package:testecommerce/bloc/models/best_seller_class.dart';
import 'package:http/http.dart' as http;

class BestSellerRepository
{
  final api = "https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175";

  Future<List<BestSeller>> getBestSeller() async {
    final response = await http.get(Uri.parse(api));
    if(response.statusCode == 200) {
      final jsonData = json.decode(response.body);
        return (jsonData['best_seller'] as List).map((e) => BestSeller.fromJSON(e)).toList();
      } else {
      throw Exception("Error");
    }
  }
}