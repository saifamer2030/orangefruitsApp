import 'package:flutter/widgets.dart';
// my imports
import '../models/models.dart';

class AppProvider extends ChangeNotifier {
  // global variable
  List<Product> _carts = [];
  Product _activeProduct = null;

 // getter functions
  Product get activeProduct => _activeProduct;
  int get total => _carts.length;
  List<Product> get carts => _carts;
  getCartCount(){
   double  total = 0;
    for(int i=0; i< carts.length;i++){
      total += carts[i].qty;
    }
    return total;
  }

  // Add-function Product to cart - function
  addMProducts(Product product, int count) {
    // Check if the Product is Already Added
    Product check = _carts.firstWhere((p) => p.id == product.id, orElse: () => null);
    if (check != null) {
      check.qty += count;
    }
    // Or This's First Add Then Increment the Quantity of Product
    else {
      _carts.add(product);
      // Calculate The Total of  Price and Quantity
   //   calculateTotal();
    }
    notifyListeners();
  }//End-function
  // Add-function Product to cart - function
  addProduct(Product product) {
    // Check if the Product is Already Added
    Product check = _carts.firstWhere((p) => p.id == product.id, orElse: () => null);
    if (check != null) {
      check.qty += 1;
    }
    // Or This's First Add Then Increment the Quantity of Product
    else {
      _carts.add(product);
      // Calculate The Total of  Price and Quantity
   //   calculateTotal();
    }
    notifyListeners();
  }//End-function
  // Remove Product from cart -function
  removeProduct(Product product) {
    // Check if the Products is Already in cart
    Product check = _carts.firstWhere((p) => p.id == product.id,orElse: null);
    if (check != null && check.qty == 1) {
      _carts.remove(product);
    }
    // Or This's Multiple Removal Then Decrement the Quantity of Product
    else {
      check.qty -= 1;
    //  calculateTotal();
    }
    notifyListeners();
  }//End-function
  // Update Product in cart -function
  updateProduct(product, qty) {
    int index = _carts.indexWhere((i) => i.id == product.id);
    _carts[index].qty = qty;
    if (_carts[index].qty == 0)
      removeProduct(product);

    calculateTotal();
    notifyListeners();
  } //End-function
  // Clear cart of Products -function
  clearCart() {
    _carts.forEach((f) => f.qty = 1);
    _carts = [];
    notifyListeners();
  }//End-function
  // Calculate Total Products of Cart -function
  calculateTotal() {
    double _total = 0;
    for(int i=0; i< carts.length;i++){
      _total += carts[i].price * carts[i].qty;
    }
    return _total;
  }//End-function

  // set qty total
  setTotalQty(){
    _carts[0].qty = 1;
  }
 // Set The Selected Product -function
 setActiveProduct(Product product){
    _activeProduct = product;
 }//End-function


}

