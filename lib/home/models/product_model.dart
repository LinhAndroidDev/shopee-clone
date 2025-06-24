class ProductModel {
  final String detail;
  final String imageUrl;
  final int price;
  double? rating;
  final int quantitySold;
  String? address;
  String? shippingTime;
  final TypeRating? typeRating;

  ProductModel({
    required this.detail,
    required this.imageUrl,
    required this.price,
    this.rating,
    required this.quantitySold,
    this.address,
    this.shippingTime,
    this.typeRating,
  });
}

enum TypeRating { cheapChampion, bestSeller }