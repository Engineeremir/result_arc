class Category {
  int? categoryId;
  String? categoryName;
  String? imagePath;

  Category({this.categoryId, this.categoryName, this.imagePath});

  Category.fromJson(Map<String, dynamic> json) {
    categoryId = json['categoryId'];
    categoryName = json['categoryName'];
    imagePath = json['imagePath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['categoryId'] = this.categoryId;
    data['categoryName'] = this.categoryName;
    data['imagePath'] = this.imagePath;
    return data;
  }
}