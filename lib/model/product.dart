/* 
        {
            "id": 48,
            "created_at": "2023-11-18T22:16:33.291151Z",
            "date": "Saturday, 18 November 2023",
            "time": "22:16:33",
            "product_name": "product 640",
            "price": 0.5229133523347274
        },
*/
class Product {
  int? id;
  String? dateTime;
  String? time;
  String? productName;
  double? price;

  Product({
    required this.id,
    required this.dateTime,
    required this.time,
    required this.productName,
    required this.price,
  });

  factory Product.fromJson(Map<String, dynamic> json) => Product(
        id: json["id"] ?? "0",
        dateTime: json["date_time"],
        time: json["time"],
        productName: json["product_name"],
        price: json["price"]?.toDouble(),
      );
}
