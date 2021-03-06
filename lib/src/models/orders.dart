import 'package:flutter/foundation.dart';

class Order {
  int id;
  String itemName;
  double price;
  int categoryId;
  String description;
  bool isActive;
  double weight;
  double cookTime, estimatedDeliveryTime;
  List<Order> suggestedProducts;
  double discount;
  double rating;
  String imagePath;
  String history;

  Order({
    @required this.id,
    this.itemName,
    this.price,
    this.categoryId,
    this.description,
    this.isActive,
    this.imagePath,
    this.weight,
    this.cookTime,
    this.estimatedDeliveryTime,
    this.suggestedProducts,
    this.discount,
    this.rating,
    this.history,
  });

  Order copyWith(
      {int id,
        String itemName,
        double price,
        int categoryId,
        String description,
        Map ingredients,
        String recipe,
        bool isActive}) {
    return Order(
      id: id ?? this.id,
      itemName: itemName ?? this.itemName,
      price: price ?? this.price,
      categoryId: categoryId ?? this.categoryId,
      description: description ?? this.description,
      isActive: isActive ?? this.isActive,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
          other is Order &&
              runtimeType == other.runtimeType &&
              id == other.id &&
              itemName == other.itemName &&
              price == other.price &&
              categoryId == other.categoryId &&
              description == other.description &&
              isActive == other.isActive;

  @override
  int get hashCode =>
      id.hashCode ^
      itemName.hashCode ^
      price.hashCode ^
      categoryId.hashCode ^
      description.hashCode ^
      isActive.hashCode;

  @override
  String toString() {
    return 'MenuItem{id: $id, itemName: $itemName, price: $price, categoryId: $categoryId, description: $description, isActive: $isActive}';
  }
}
