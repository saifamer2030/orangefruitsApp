import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:orangefruits/src/pages/pages.dart';
import 'package:provider/provider.dart';
// my imports
import '../providers/app_provider.dart';
import '../models/models.dart';

class ItemListProducts extends StatefulWidget {
  final List<Product> products;

  const ItemListProducts({Key key, this.products}) : super(key: key);

  @override
  _ItemListProductsState createState() => _ItemListProductsState();
}

class _ItemListProductsState extends State<ItemListProducts> {
  @override
  Widget build(BuildContext context) {
     // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    return ListView.builder(
        itemCount: widget.products.length,
        itemBuilder: (BuildContext context, i) {
          //set product that selected
          bloc.setActiveProduct(widget.products[i]);
          return Container(
      height: 150,
      child:   Stack(
        children: <Widget>[
          Positioned(
            top: 15,
            right: 0,
            left: 0,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacementNamed('/productDetails',
                    arguments: RouteArgument(param: i));
              },
              child: Container(
                height: 143,
                child: Card(
                  elevation: 4,
                  child: ListTile(
                    title: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        widget.products[i].name,
                        textAlign: TextAlign.center,
                      ),
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "${widget.products[i].price.toString()} رس ",
                              style: TextStyle(fontFamily: 'Tajawal-Regular'),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                            Row(
                              children: <Widget>[
                                Text(
                                  "سعر الكيلو",
                                  style: TextStyle(
                                      fontFamily: 'Tajawal-Regular',
                                      fontSize: 12,
                                      fontWeight: FontWeight.w200,
                                      color: Colors.deepOrange),
                                  textAlign: TextAlign.center,
                                ),
                                Icon(
                                  Icons.credit_card,
                                  color: Colors.grey,
                                )
                              ],
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                 setState(() {
                                        bloc.removeProduct(bloc.activeProduct);
                                      });
                                },
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.grey[300],
                                    ),
                                    child: Icon(Icons.remove,
                                        color: Colors.blueGrey, size: 15)),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Center(child: Text(bloc.activeProduct.qty.toString())),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                        bloc.addProduct(bloc.activeProduct);
                                      });
                                },
                                child: Container(
                                    padding: EdgeInsets.all(2),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: Colors.orange[500],
                                    ),
                                    child: Icon(Icons.add,
                                        color: Colors.deepOrange, size: 15)),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                    trailing: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                          NetworkImage(widget.products[i].imgPath,),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 7,
              left: 7,
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushReplacementNamed('/checkOut',
                      arguments: RouteArgument(param: bloc.total));
                },
                child:Container(
                  padding: EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(7)),
                  child: Icon(Icons.add_shopping_cart,
                      color: Colors.white70, size: 20),
                ),
              )
          )
        ],
      ),
    );
         });
  }
}
