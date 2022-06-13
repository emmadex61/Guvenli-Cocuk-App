class CategoryModel {
  String name;
  String? image;
  bool isParent;

  CategoryModel({
    required this.name,
    this.image,
     this.isParent = false,
  });
}
