import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';
// my imports
import '../../res/res.dart';
import '../../src/models/models.dart';

class FetchData {
  Future<List<Category>> getCategories() async {
    Uri uri = Config.getUri('api/category/read.php');
    http.Response res = await http.get(uri);

    if (res.statusCode == 200) {
      List<dynamic> body = jsonDecode(res.body);
      List<Category> data = body
          .map(
            (dynamic item) => Category.fromJson(item),
          )
          .toList();

      return data;
    } else {
      throw "Can't get posts.";
    }
  }

  Future<List<Product>> getProducts() async {
    Uri uri = Config.getUri('api/product/read.php');
    Response res = await get(uri);

    if (res.statusCode == 200) {
      List body = jsonDecode(res.body)["product"];
      print("The Json Data is: "+ body.toString());
      print(body);
      return body.map((offer) => Product.fromJson(offer)).toList();;
    } else {
      throw "Can't get Products.";
    }
  }

  Future<Stream<Product>> getProduct(String productId) async {
    Uri uri = Config.getUri('api/products/$productId');
    uri = uri.replace(queryParameters: {
      'with':
          'market;category;options;optionGroups;productReviews;productReviews.user'
    });
    try {
      final client = new http.Client();
      final streamedRest = await client.send(http.Request('get', uri));
      return streamedRest.stream
          .transform(utf8.decoder)
          .transform(json.decoder)
          .map((data) => Config.getData(data))
          .map((data) {
        return Product.fromJson(data);
      });
    } catch (e) {
      print(
          CustomTrace(StackTrace.current, message: uri.toString()).toString());
      return new Stream.value(new Product.fromJson({}));
    }
  }
}
