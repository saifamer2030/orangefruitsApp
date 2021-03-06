class Categories {
  List<Category> records;

  Categories({this.records});

  Categories.fromJson(Map<String, dynamic> json) {
    if (json['records'] != null) {
      records = new List<Category>();
      json['records'].forEach((v) {
        records.add(new Category.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.records != null) {
      data['records'] = this.records.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Category {
  String id;
  String name;
  String description;
  String iconPath;

  Category({this.id, this.name, this.description, this.iconPath});

  Category.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    iconPath = json['iconPath'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['description'] = this.description;
    data['iconPath'] = this.iconPath;
    return data;
  }
}
