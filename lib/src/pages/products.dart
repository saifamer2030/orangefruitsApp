import 'package:flutter/material.dart';
// my imports
// import '../../data/data.dart';
import '../models/models.dart';

class ProductsPage extends StatefulWidget {

  final ProductType product;
  ProductsPage(this.product);

  @override
  _ProductsPageState createState() => _ProductsPageState();
}

class _ProductsPageState extends State<ProductsPage> with SingleTickerProviderStateMixin {

  AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = new AnimationController(
      duration: const Duration(milliseconds: 500),
      value: 0.0,
      vsync: this,
    );
  }

  void _toggleBackdropPanelVisibility() {
    _controller.fling(velocity: _backdropPanelVisible ? -2.0 : 2.0);
  }

  bool get _backdropPanelVisible {
    final AnimationStatus status = _controller.status;
    return status == AnimationStatus.completed || status == AnimationStatus.forward;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<bool> _exitProductsPage() async {
    if(_backdropPanelVisible){
      _toggleBackdropPanelVisibility();
      return false;
    } else {
      return true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: _exitProductsPage,
      child: Scaffold(
        appBar: AppBar(title: Text('${widget.product.name}')),
        body: LayoutBuilder(builder: (context, constraints) {
          return Stack(
            children: <Widget>[
             // ProductGrid(onTap: _toggleBackdropPanelVisibility, productType: widget.product),
              IgnorePointer(
                ignoring: !_backdropPanelVisible,
                child: GestureDetector(
                  onTap: _toggleBackdropPanelVisibility,
                  child: Container(
                    color: Colors.transparent.withOpacity(_controller.value / 2),
                  ),
                ),
              ),
//              BackdropPanel(
//                key: _globalKey,
//                color: Colors.white,
//                onTap: _toggleBackdropPanelVisibility,
//                onVerticalDragUpdate: _handleDragUpdate,
//                onVerticalDragEnd: _handleDragEnd,
//                controller: _controller,
//                constraints: constraints,
//                title: Text(
//                  MockData.productList.firstWhere((Product product) => product.categoryId == widget.product.category.index).itemName,
//                  style: RapidinhoTextStyle.largeText.copyWith(fontWeight: FontWeight.w600, color: Colors.black54),
//                ),
//                child: ProductCard.large(
//                  product: MockData.productList.firstWhere((Product product) => product.categoryId == widget.product.category.index),
//                ),
//              ),
            ],
          );
        }),
      ),
    );
  }
}