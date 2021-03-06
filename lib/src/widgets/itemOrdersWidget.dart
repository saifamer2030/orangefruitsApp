import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../models/models.dart';
import '../providers/providers.dart';

class ItemOrdersWidget extends StatefulWidget {
  final index;

  const ItemOrdersWidget({Key key, this.index}) : super(key: key);

  @override
  _ItemOrdersWidgetState createState() => _ItemOrdersWidgetState();
}

class _ItemOrdersWidgetState extends State<ItemOrdersWidget> {

  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    Product product = bloc.carts[widget.index];
    return GestureDetector(
                onTap: () {
                 //move to CurrentOrders Page
                  Navigator.pushNamed(context, '/currentOrders');
                },
          child: Container(
          height: 100,
          child:Column(
            mainAxisSize:MainAxisSize.min,
            children:<Widget>[
              ListTile(
                title: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(product.name,style:TextStyle(color: Colors.deepOrange)),
                  Text((product.qty).toString()+" x "),
                  ],
                ),
                subtitle:Row(
                    mainAxisAlignment:MainAxisAlignment.spaceBetween,
                    children:<Widget>[
                      Row(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[
                            Text(
                              product.price.toString()+" كيلو",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'Tajawal-Regular'),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.shopping_basket,
                                color: Colors.grey[300], size: 24),
                          ]),
                      Row(
                          mainAxisSize:MainAxisSize.min,
                          children:<Widget>[
                            Text(
                              "20/10/2020",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 12,
                                  fontFamily: 'Tajawal-Regular'),
                              textDirection: TextDirection.rtl,
                              textAlign: TextAlign.center,
                            ),
                            SizedBox(width: 5,),
                            Icon(Icons.event,
                                color: Colors.grey[300], size: 24),
                          ]),
                    ]
                ),
                trailing: Container(
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
              Divider(color: Colors.grey, height: 3),
            ]
          )
      ),
    );
    }
}