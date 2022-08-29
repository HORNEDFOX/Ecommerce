class BestSeller {
  int id;
  bool is_favorites;
  String title;
  double price_without_discount;
  String picture;
  double discount_price;

  BestSeller(
      {required this.id, required this.is_favorites, required this.title, required this.price_without_discount, required this.picture, required this.discount_price});

  factory BestSeller.fromJSON(Map<String, dynamic> json) =>
      BestSeller(
        id: int.parse(json['id'].toString()),
        is_favorites: json['is_favorites'],
        title: json['title'],
        price_without_discount: double.parse(json['price_without_discount'].toString()),
        picture: json['picture'],
        discount_price: double.parse(json['discount_price'].toString()),
      );
}