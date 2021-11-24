import 'category_model.dart';

class Product {
  int? id;
  String? productName;
  double? unitPrice;
  String? imagePath;
  String? quantityPerUnit;
  Category? category;

  Product(
      {this.id,
      this.productName,
      this.unitPrice,
      this.imagePath,
      this.quantityPerUnit,
      this.category});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productName = json['productName'];
    unitPrice = json['unitPrice'];
    imagePath = json['imagePath'];
    quantityPerUnit = json['quantityPerUnit'];
    category =
        json['category'] != null ? Category.fromJson(json['category']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['productName'] = this.productName;
    data['unitPrice'] = this.unitPrice;
    data['imagePath'] = this.imagePath;
    data['quantityPerUnit'] = this.quantityPerUnit;
    if (this.category != null) {
      data['category'] = this.category!.toJson();
    }
    return data;
  }
}