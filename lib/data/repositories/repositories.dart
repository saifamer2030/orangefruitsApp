import 'package:flutter/material.dart';
// my imports
import 'custom_icons.dart';
import '../../src/models/models.dart';

class MockData {
  static final List<Order> orderList = [
    Order(
      id: 0,
      itemName: 'موز سوداني',
      imagePath: 'assets/images/chickTime.png',
      price: 120.00,
      categoryId: 1,
      description:
      "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
      isActive: true,
      cookTime: 10.0,
      estimatedDeliveryTime: 15.55,
      suggestedProducts: [],
      discount: 17.00,
      rating: 4.8,
      history:"2/6/2020"
    ),
    Order(
      id: 1,
      itemName: 'يوسفي سوري',
      imagePath: 'assets/images/chickTime.png',
      price: 32.00,
      categoryId: 1,
      description:
      "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
      isActive: true,
      cookTime: 10.0,
      estimatedDeliveryTime: 15.55,
      suggestedProducts: [],
      discount: 1500.00,
      rating: 4.8,
        history:"14/6/2020"
    ),
    Order(
      id: 2,
      itemName: 'مانجو صومالي',
      imagePath: 'assets/images/chickTime.png',
      price: 80.00,
      categoryId: 1,
      description:
      "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
      isActive: true,
      cookTime: 10.0,
      estimatedDeliveryTime: 15.55,
      suggestedProducts: [],
      discount: 1500.00,
      rating: 4.8,
        history:"22/6/2020"
    ),
    Order(
      id: 3,
      itemName: 'برتقال كويتي',
      imagePath: 'assets/images/chickTime.png',
      price: 27.00,
      categoryId: 1,
      description:
      "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
      isActive: true,
      cookTime: 10.0,
      estimatedDeliveryTime: 15.55,
      suggestedProducts: [],
      discount: 33.60,
      rating: 4.8,
        history:"23/6/2020"
    ),
    Order(
      id: 4,
      itemName: 'تفاح مصري',
      imagePath: 'assets/images/chickTime.png',
      price: 52.50,
      categoryId: 1,
      description:
      "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
      isActive: true,
      cookTime: 10.0,
      estimatedDeliveryTime: 15.55,
      suggestedProducts: [],
      discount: 1500.00,
      rating: 4.8,
        history:"28/6/2020"
    ),
  ];
//  static final List<Product> productList = [
//    Product(
//      id: 0,
//      itemName: 'موز سوداني',
//      imagePath: 'assets/images/chickTime.png',
//      price: 120.00,
//      categoryId: 1,
//      description:
//          "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
//      isActive: true,
//      cookTime: 10.0,
//      estimatedDeliveryTime: 15.55,
//      suggestedProducts: [],
//      discount: 17.00,
//      rating: 4.8,
//    ),
//    Product(
//      id: 1,
//      itemName: 'يوسفي سوري',
//      imagePath: 'assets/images/chickTime.png',
//      price: 32.00,
//      categoryId: 1,
//      description:
//          "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
//      isActive: true,
//      cookTime: 10.0,
//      estimatedDeliveryTime: 15.55,
//      suggestedProducts: [],
//      discount: 1500.00,
//      rating: 4.8,
//    ),
//    Product(
//      id: 2,
//      itemName: 'مانجو صومالي',
//      imagePath: 'assets/images/chickTime.png',
//      price: 80.00,
//      categoryId: 1,
//      description:
//          "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
//      isActive: true,
//      cookTime: 10.0,
//      estimatedDeliveryTime: 15.55,
//      suggestedProducts: [],
//      discount: 1500.00,
//      rating: 4.8,
//    ),
//    Product(
//      id: 3,
//      itemName: 'برتقال كويتي',
//      imagePath: 'assets/images/chickTime.png',
//      price: 27.00,
//      categoryId: 1,
//      description:
//          "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
//      isActive: true,
//      cookTime: 10.0,
//      estimatedDeliveryTime: 15.55,
//      suggestedProducts: [],
//      discount: 33.60,
//      rating: 4.8,
//    ),
//    Product(
//      id: 4,
//      itemName: 'تفاح مصري',
//      imagePath: 'assets/images/chickTime.png',
//      price: 52.50,
//      categoryId: 1,
//      description:
//          "هنا يتم وضع وصف للمنتج بكامل التفاصيل ويتم عرض تفاصيل المنتج حسب توزيع الاقسام",
//      isActive: true,
//      cookTime: 10.0,
//      estimatedDeliveryTime: 15.55,
//      suggestedProducts: [],
//      discount: 1500.00,
//      rating: 4.8,
//    ),
//  ];

  static final List<ProductType> productCategoryList = [
    ProductType(
      name: 'دجاج',
      assetPath: Icon(CustomIcons.chicken),
      category: ProductCategory.Chicken,
    ),
    ProductType(
      name: 'مشروبات',
      assetPath: Icon(CustomIcons.drink),
      category: ProductCategory.Drinks,
    ),
    ProductType(
      name: 'خضروات',
      assetPath: Icon(CustomIcons.vegetable),
      category: ProductCategory.Vegetables,
    ),
    ProductType(
        name: 'وريقات',
        assetPath: Icon(CustomIcons.leaf),
        category: ProductCategory.Leafs),
    ProductType(
      name: 'لحوم',
      assetPath: Icon(CustomIcons.meat),
      category: ProductCategory.Meat,
    ),
    ProductType(
      name: 'فواكه',
      assetPath: Icon(CustomIcons.fruits),
      category: ProductCategory.Fruits,
    ),
    ProductType(
      name: 'اسماك',
      assetPath: Icon(CustomIcons.fish),
      category: ProductCategory.Fish,
    ),
  ];
  static final AboutApp aboutApp = AboutApp(
      description:
          "هنا يتم وضع كلام ونبذة عن التطبيق والخدمات التي يقدمها\n هنا يتم وضع كلام ونبذة عن التطبيق والخدمات التي يقدمها \n هنا يتم وضع كلام ونبذة عن التطبيق والخدمات التي يقدمها \n هنا يتم وضع كلام ونبذة عن التطبيق والخدمات التي يقدمها",
      phoneOne: "01234567890",
      phoneTwo: "01234569876",
      address: "جدة الحي الخامس - ابراج النورين - الطابق العاشر",
      website: "WWW.ORANGEFRUITS.COM",
      email: "INFO@ORANEFROUITS.COM");
}
