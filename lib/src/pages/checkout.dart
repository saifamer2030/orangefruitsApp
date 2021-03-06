import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
// my imports
import '../../data/data.dart';
import '../models/models.dart';
import '../providers/providers.dart';
import '../widgets/widgets.dart';

// ignore: must_be_immutable
class CheckoutPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  static const routeName = '/checkout';
  const CheckoutPage({Key key, this.scaffoldKey}) : super(key: key);
  @override
  _CheckoutPageState createState() => _CheckoutPageState();
}

class _CheckoutPageState extends State<CheckoutPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    // bloc repository
    var bloc = Provider.of<AppProvider>(context);
    return Scaffold(
      key: widget.scaffoldKey,
      appBar: _appBar(context, bloc),
      body: bloc.getCartCount() == 0
          ? Center(
        child: Text("سلة المشتروات فارغة"),
      )
          : _bodyWidget(bloc),
    );
  }
  _appBar(BuildContext context,var bloc) {
    return AppBar(
      backgroundColor: Colors.white,
      leading: IconButton(
        icon: Icon(Icons.arrow_back_ios,color: Colors.grey,),
        onPressed: (){
          Navigator.of(context).pop(context);
        },
      ),
      actions: <Widget>[
        Center(
          child: Text('تفاصيل السلة',
              style: TextStyle(
                  fontFamily: 'Tajawal-Regular', color: Colors.grey)),
        ),
        IconButton(
          icon: Icon(Icons.shopping_basket, color: Colors.blueGrey),
          onPressed: () {
            widget.scaffoldKey.currentState.openEndDrawer();
          },
        ),
      ],
    );
  }
  _bodyWidget(AppProvider bloc){
    return SafeArea(
        child: ListView(children: <Widget>[
          Padding(
              padding: const EdgeInsets.all(8),
              child: Column(children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "بيانات الطلب الاساسية",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Tajawal-Regular'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.attachment,
                          color: Colors.grey[300], size: 30)
                    ],
                  ),
                ),
                Card(
                    elevation: 4,
                    child: Center(
                      child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: ListTile(
                            title: Row(
                              mainAxisAlignment:
                              MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Text(
                                  "طماطم + برتقال + موز",
                                  style: TextStyle(
                                      color: Colors.deepOrange,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                ),
                                Text(
                                  " رقم الطلب 645800",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                ),
                              ],
                            ),
                            subtitle: ListTile(
                              title: Text(
                                "تاريخ الطلب 10/5/2020",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                              trailing: Icon(Icons.event,
                                  color: Colors.grey[300], size: 30),
                            ),
                          )),
                    )),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "الكمية",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Tajawal-Regular'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.attachment,
                          color: Colors.grey[300], size: 30)
                    ],
                  ),
                ),
                Card(
                  elevation: 4,
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                bloc.getCartCount().toString() + "  منتج",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: ListTile(
                                title: Text(
                                  "العدد",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                ),
                                trailing: Icon(Icons.credit_card,
                                    color: Colors.grey[300], size: 30),
                              ),
                            ),
                          ],
                        ),
                        Divider(color: Colors.grey, height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                                flex: 1,
                                child: Text(
                                  (bloc.activeProduct.qty * bloc.activeProduct.price).toString()+ "  رس",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                )),
                            Expanded(
                                flex: 2,
                                child: ListTile(
                                  title: Text(
                                    "اجمالي السعر",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Tajawal-Regular'),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                  ),
                                  trailing: Icon(Icons.credit_card,
                                      color: Colors.grey[300],
                                      size: 30),
                                )),
                          ],
                        ),
                      ]),
                ),
                SizedBox(height: 15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "المنتجات",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Tajawal-Regular'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.phone_android,
                          color: Colors.grey[300], size: 30)
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(right: 8),
                  height: 120.0 * (bloc.carts.length),
                  child: ListView.builder(
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: bloc.carts.length,
                    itemBuilder: (context, index) {
                      return ItemOrderWidget(index: index);
                    },
                  ),
                ),
                SizedBox(height: 25),
                GestureDetector(
                  onTap: () {
                    //move to deliveryTimeline Page
                    Navigator.pushNamed(context, '/deliveryTimeline');
                  },
                  child: Container(
                    width: 250,
                    padding: EdgeInsets.symmetric(vertical: 10),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(
                      child: Text(
                        'اكمال الطلب',
                        style: TextStyle(
                            fontSize: 24,
                            fontFamily: 'Tajawal-Regular',
                            color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ])),
        ]));
  }
}