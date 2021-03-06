import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../providers/providers.dart';
import '../models/models.dart';

class ProductDetialsPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  static const routeName = '/productDetails';
  const ProductDetialsPage({Key key, this.scaffoldKey}) : super(key: key);

  @override
  _ProductDetialsPageState createState() => _ProductDetialsPageState();
}

class _ProductDetialsPageState extends State<ProductDetialsPage> {

  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    return Material(
      child: Scaffold(
        backgroundColor: Colors.grey[300],
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              backgroundColor: Colors.transparent,
              expandedHeight: 260.0,
              pinned: false,
              floating: false,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                titlePadding: EdgeInsets.all(0.0),
                title: Stack(
                  children: <Widget>[
                    Positioned(
                      bottom: 20,
                      right: 55,
                      left: 55,
                      child:  Image.network(bloc.activeProduct.imgPath,
                        fit: BoxFit.fill,
                        height: 65,
                        width: 65,),
                    )
                  ],
                ),
              ),
              leading: Stack(
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.shopping_cart, color: Colors.deepOrange),
                    onPressed: () {
                      //move to Checkout Page
                      Navigator.pushNamed(context, '/checkout');
                    },
                  ),
                  Positioned(
                    top: 3,
                    right: 4,
                    child: Container(
                        padding: EdgeInsets.all(3),
                        height: 20,
                        width: 25,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.orange[400],
                        ),
                        child: Center(
                          child: Text(bloc.getCartCount()>9?"10 +": bloc.getCartCount().toString(),
                              style: TextStyle(
                                fontSize: 10,
                                  fontFamily: 'Tajawal-Regular',
                                  color: Colors.white70)),
                        )),
                  ),
                ],
              ),
              actions: <Widget>[
                Center(
                  child: Text('اورنج فروت',
                      style: TextStyle(
                          fontFamily: 'Tajawal-Regular',
                          color: Colors.deepOrange)),
                ),
                IconButton(
                  icon:
                  Icon(Icons.format_align_right, color: Colors.deepOrange),
                  onPressed: () {
                    widget.scaffoldKey.currentState.openEndDrawer();
                  },
                ),
              ],
            ),
            SliverToBoxAdapter(
              child: Stack(
                          overflow: Overflow.visible,
                          fit: StackFit.passthrough,
                          children: <Widget>[
                  Container(
                    height: MediaQuery.of(context).size.height+55,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10)),
                      color: Colors.white,
                    ),
                    child: SingleChildScrollView(
                      physics: NeverScrollableScrollPhysics(),
                      padding: EdgeInsets.only(top: 20,right: 20,left: 20),
                      child: Column(
                        children: <Widget>[
                          SizedBox(
                            height: 15,
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: Text(
                                bloc.activeProduct.name,
                                style: TextStyle(
                                    fontSize: 24.0,
                                    color: Colors.grey[800],
                                    fontFamily: 'Tajawal-Regular',
                                    fontWeight: FontWeight.bold)),
                          ),
                          SizedBox(height: 15,),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                bloc.activeProduct.description,
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontFamily: 'Tajawal-Regular',
                                    fontSize: 12.0,
                                    color: Colors.grey)),
                          ),
                          SizedBox(height: 18,),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Padding(
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
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.grey[300],
                                        ),
                                        child:
                                        Icon(Icons.remove, color: Colors.blueGrey)),
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
                                        padding: EdgeInsets.all(3),
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(5),
                                          color: Colors.orange[300],
                                        ),
                                        child:
                                        Icon(Icons.add, color: Colors.deepOrange)),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 45,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.of(context)
                                  .pushReplacementNamed('/dashboard', arguments: 5);
                            },
                            child: Container(
                              height: 55,
                              width: MediaQuery.of(context).size.width,
                              margin: EdgeInsets.only(bottom: 55),
                              padding: EdgeInsets.all(15),
                              decoration: BoxDecoration(
                                  color: Colors.deepOrange,
                                  borderRadius:
                                  BorderRadius.circular(8)),
                              child: Center(
                                child: Text("رجوع",
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Tajawal-Regular',
                                        color: Colors.white70)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                   Positioned(
                                    right: 8.0,
                                    top: -38,
                                    child: GestureDetector(
                                      onTap: () {
                                        //move to Checkout Page
                                        Navigator.pushNamed(context, '/checkout');
                                      },
                                      child: Container(
                                          width: 60,
                                          height: 80,
                                          padding: EdgeInsets.all(4),
                                          margin: EdgeInsets.only(right: 7),
                                          decoration: new BoxDecoration(
                                            borderRadius: BorderRadius.circular(8),
                                            color: Colors.orange[500],
                                          ),
                                          child: Center(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: <Widget>[
                                                Text(
                                                  "${(bloc.activeProduct.qty*bloc.activeProduct.price).toString()} رس ",
                                                  style: TextStyle(
                                                      color: Colors.white70,
                                                      fontSize: 12,
                                                      fontFamily: 'Tajawal-Regular'),
                                                  textDirection: TextDirection.rtl,
                                                  textAlign: TextAlign.center,
                                                ),
                                                Icon(Icons.add_shopping_cart,
                                                    color: Colors.deepOrange,
                                                    size: 30)
                                              ],
                                            ),
                                          )),
                                    )),
                              ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
