class Product
{
  int id;
  String ? CPU;
  String ? camera;
  List<dynamic> ? capacity;
  List<dynamic> ? color;
  List<dynamic> ? images;
  String ? image;
  bool ? is_favorites;
  double price;
  double ? rating;
  String ? sd;
  String ? ssd;
  String title;

  Product({required this.id, this.CPU, this.camera, this.capacity, this.color, this.images, this.image, this.is_favorites, required this.price, this.sd, required this.title, this.rating, this.ssd});

  factory Product.fromJSON(Map<String, dynamic> json) => Product(
    id: int.parse(json['id'].toString()),
    CPU: json['CPU'] ?? "",
    camera: json['camera'] ?? "",
    capacity: json['capacity'] ?? "",
    color: json['color'] ?? "",
    images: json['images'],
    is_favorites: json['isFavorites'] ?? false,
    price: double.parse(json['price'].toString()),
    rating: double.parse(json['rating'].toString()),
    sd: json['sd'] ?? "",
    ssd: json['ssd'] ?? "",
    title: json['title'],
  );

  factory Product.fromJSONBasket(Map<String, dynamic> json) => Product(
    id: int.parse(json['id'].toString()),
    image: json['images'],
    price: double.parse(json['price'].toString()),
    title: json['title'],
  );
}