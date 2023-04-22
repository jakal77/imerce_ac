class ProductModel {
  String image;
  String name;
  int price;
  int reviewCount;
  double reivewRating;
  bool cart=false;

  ProductModel({required this.image,
    required this.name,
    required this.price,
    required this.reviewCount,
    required this.reivewRating});

  @override
  String toString(){
    return "";
  }
}
