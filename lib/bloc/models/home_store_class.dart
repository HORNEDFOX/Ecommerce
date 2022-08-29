class HomeStore
{
  int id;
  bool ? is_new;
  String title;
  String subtitle;
  String picture;
  bool is_buy;

  HomeStore({required this.id, this.is_new, required this.title, required this.subtitle, required this.picture, required this.is_buy});

  factory HomeStore.fromJSON(Map<String, dynamic> json) => HomeStore(
    id: int.parse(json['id'].toString()),
    is_new: json['is_new'] ?? false,
    title: json['title'],
    subtitle: json['subtitle'],
    picture: json['picture'],
    is_buy: json['is_buy'],
  );
}