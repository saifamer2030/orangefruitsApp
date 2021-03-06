import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../providers/providers.dart';
import '../models/models.dart';

class ItemOrderWidget extends StatefulWidget{
  final index;
  ItemOrderWidget({Key key, this.index}) : super(key: key);

  @override
  _ItemOrderWidgetState createState() => _ItemOrderWidgetState();
}

class _ItemOrderWidgetState extends State<ItemOrderWidget> {
  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    Product product = bloc.carts[widget.index];
    return Container(
      height: 110,
      child: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            bottom: 0,
            left: 20,
            child: Container(
              height: 105,
              width: MediaQuery.of(context).size.width - 55,
              child: Card(
                elevation: 4,
                child: ListTile(
                  title: Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: Text(
                      product.name,
                      textAlign: TextAlign.center,
                    ),
                  ),
                  subtitle: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            "${product.price.toString()} رس ",
                            style: TextStyle(fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          SizedBox(width: 4),
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
                        padding: const EdgeInsets.all(4.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  bloc.updateProduct(product,product.qty - 1);
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
                              padding: const EdgeInsets.all(4.0),
                              child: Center(child: Text(product.qty.toString())),
                            ),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  bloc.updateProduct(product,product.qty + 1);
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
                  trailing: GestureDetector(
                    onTap: () {
                      //move to productDetails Page
                      Navigator.pushNamed(context, '/productDetails');

                    },
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image:
                              NetworkImage(product.imgPath),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
              top: 38,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  //clear the cart
                  bloc.clearCart();

                },
                child: Container(
                    padding: EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: Colors.grey[300],
                        borderRadius: BorderRadius.circular(7)),
                    child: Icon(Icons.close,
                        color: Colors.deepOrangeAccent, size: 20)),
              ))
        ],
      ),
    );
  }
}
