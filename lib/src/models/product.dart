class Products {
  List<Product> _product;

  Products({List<Product> product}) {
    this._product = product;
  }

  List<Product> get product => _product;
  set product(List<Product> product) => _product = product;

  Products.fromJson(Map<String, dynamic> json) {
    if (json['product'] != null) {
      _product = new List<Product>();
      json['product'].forEach((v) {
        _product.add(new Product.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this._product != null) {
      data['product'] = this._product.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Product {
  int _id;
  int _categoryId;
  String _name;
  String _description;
  int _price;
  String _imgPath;
  int _qty;
  String _categoryName;

  Product(
      {int id,
        int categoryId,
        String name,
        String description,
        int price,
        String imgPath,
        int qty,
        String categoryName}) {
    this._id = id;
    this._categoryId = categoryId;
    this._name = name;
    this._description = description;
    this._price = price;
    this._imgPath = imgPath;
    this._qty = qty;
    this._categoryName = categoryName;
  }

  int get id => _id;
  set id(int id) => _id = id;
  int get categoryId => _categoryId;
  set categoryId(int categoryId) => _categoryId = categoryId;
  String get name => _name;
  set name(String name) => _name = name;
  String get description => _description;
  set description(String description) => _description = description;
  int get price => _price;
  set price(int price) => _price = price;
  String get imgPath => _imgPath;
  set imgPath(String imgPath) => _imgPath = imgPath;
  int get qty => _qty;
  set qty(int qty) => _qty = qty;
  String get categoryName => _categoryName;
  set categoryName(String categoryName) => _categoryName = categoryName;

  Product.fromJson(Map<String, dynamic> json) {
    _id = json['id'];
    _categoryId = json['category_id'];
    _name = json['name'];
    _description = json['description'];
    _price = json['price'];
    _imgPath = json['imgPath'];
    _qty = json['qty'];
    _categoryName = json['category_name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this._id;
    data['category_id'] = this._categoryId;
    data['name'] = this._name;
    data['description'] = this._description;
    data['price'] = this._price;
    data['imgPath'] = this._imgPath;
    data['qty'] = this._qty;
    data['category_name'] = this._categoryName;
    return data;
  }
}
