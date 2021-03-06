import 'package:flutter/cupertino.dart';

class ProductType {
  final Icon assetPath;
  final String name;
  final List<int> filter;
  final ProductCategory category;

  ProductType({this.name, this.assetPath, this.filter, this.category});

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ProductType &&
          runtimeType == other.runtimeType &&
          assetPath == other.assetPath &&
          name == other.name &&
          filter == other.filter &&
          category == other.category;

  @override
  int get hashCode =>
      assetPath.hashCode ^ name.hashCode ^ filter.hashCode ^ category.hashCode;

  @override
  String toString() {
    return 'Product{assetPath: $assetPath, name: $name, filter: $filter, category: $category}';
  }
}

enum ProductCategory {
  Vegetables,
  Drinks,
  Fruits,
  Meat,
  Leafs,
  Fish,
  Chicken,
}
