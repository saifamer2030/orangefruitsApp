import 'package:flutter/material.dart';
// my imports 
// import '../../data/data.dart';
import '../models/models.dart';

// ignore: must_be_immutable
class CompletedOrdersPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  RouteArgument routeArgument;
  CompletedOrdersPage({Key key, this.routeArgument, this.scaffoldKey})
      : super(key: key);
  @override
  _CompletedOrdersPageState createState() => _CompletedOrdersPageState();
}

class _CompletedOrdersPageState extends State<CompletedOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: widget.scaffoldKey,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 4),
          child: ListView(
              children: <Widget>[
                SizedBox(height:15),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      Text(
                        "بيانات الطلب",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12,
                            fontFamily: 'Tajawal-Regular'),
                        textDirection: TextDirection.rtl,
                        textAlign: TextAlign.center,
                      ),
                      SizedBox(width: 10),
                      Icon(Icons.attachment,
                          color: Colors.green, size: 20)
                    ],
                  ),
                ),
                SizedBox(height:20),
                Container(
                    height:110,
                    child:Stack(
                        overflow: Overflow.visible,
                        fit: StackFit.passthrough,
                        children:<Widget>[
                          Card(
                              elevation: 4,
                              child: Container(
                                padding: const EdgeInsets.all(12.0),
                                child: Center(
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children:<Widget>[
                                          Row(
                                            children: <Widget>[
                                              Expanded(
                                                  flex:2,
                                                  child: Row(
                                                      children:<Widget>[
                                                        Text(
                                                          "تاريخ الطلب 22/6/2020",
                                                          style: TextStyle(
                                                              color: Colors.grey,
                                                              fontSize: 12,
                                                              fontFamily: 'Tajawal-Regular'),
                                                          textDirection: TextDirection.rtl,
                                                          textAlign: TextAlign.center,
                                                        ),
                                                        Icon(Icons.date_range,
                                                            color: Colors.grey[300], size: 18),
                                                      ])
                                              ),
                                              Expanded(
                                                child: Row(
                                                    children:<Widget>[
                                                      Text(
                                                        "برتقال سوداني",
                                                        style: TextStyle(
                                                            color: Colors.grey,
                                                            fontSize: 12,
                                                            fontFamily: 'Tajawal-Regular'),
                                                        textDirection: TextDirection.rtl,
                                                        textAlign: TextAlign.center,
                                                      ),
                                                      Icon(Icons.cached,
                                                          color: Colors.grey[300], size: 18),
                                                    ]),
                                              ),
                                            ],
                                          ),
                                          SizedBox(height:10),
                                          Row(
                                              mainAxisAlignment: MainAxisAlignment.end,
                                              children:<Widget>[
                                                Text(
                                                  "الحالة : اكتمال الطلب",
                                                  style: TextStyle(
                                                      color: Colors.grey,
                                                      fontSize: 12,
                                                      fontFamily: 'Tajawal-Regular'),
                                                  textDirection: TextDirection.rtl,
                                                  textAlign: TextAlign.center,
                                                ),
                                                Icon(Icons.assignment_turned_in,
                                                    color: Colors.grey[300], size: 18),
                                              ]),
                                        ])),
                              )),
                          Positioned(
                              right:0.0,
                              top:-30,
                              child: Container(
                                height: 60,
                                width: 60,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:Colors.green[100]
                                ),
                                child:Icon(Icons.location_on,color:Colors.green[400]),
                              )
                          ),
                        ]
                    )
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: <Widget>[
                    Expanded(child: Divider(color: Colors.grey, height: 3)),
                    Row(
                        children:[
                          Text(
                            "بيانات التوصيل",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.location_on,
                              color: Colors.green, size: 20),
                        ]),
                  ]),
                ),
                SizedBox(height: 8),
                Card(
                  elevation: 4,
                  child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                margin: EdgeInsets.symmetric(horizontal: 8),
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400], width: 2),
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child:Center(
                                  child:Text(
                                    "حي الامير",
                                    style: TextStyle(
                                        fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400], width: 2),
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child:Text(
                                    "ام الحمام",
                                    style: TextStyle(
                                        fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                  margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[400], width: 2),
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child:Text(
                                      "الرياض",
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[400], width: 2),
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child:Center(
                              child:Text(
                                "الشارع",
                                style: TextStyle(
                                    fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                              ),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          height: 55,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[400], width: 2),
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child:Center(
                            child:Text(
                              "وصف المنزل",
                              style: TextStyle(
                                  fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                            ),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: <Widget>[
                    Expanded(child: Divider(color: Colors.grey, height: 3)),
                    Row(
                        children:<Widget>[
                          Text(
                            "بيانات المستلم",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.account_circle,
                              color: Colors.green, size: 20),
                        ]),
                  ]),
                ),
                SizedBox(height: 8),
                Card(
                  elevation: 4,
                  child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400], width: 2),
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child:Text(
                                    "ذكر",
                                    style: TextStyle(
                                        fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                  margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[400], width: 2),
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child:Text(
                                      "ابو احمد محمد عمر",
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        Container(
                            padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                            margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.grey[400], width: 2),
                              color: Colors.grey[100],
                              borderRadius: BorderRadius.circular(7),
                            ),
                            child:Center(
                              child:Text(
                                "01234568990",
                                style: TextStyle(
                                    fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                              ),
                            )
                        ),
                        Container(
                          padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                          margin: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
                          height: 35,
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[400], width: 2),
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child:Center(
                            child:Text(
                              "ذو شعر اشقر له عمامة طويلة",
                              style: TextStyle(
                                  fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                            ),
                          ),
                        ),
                      ]),
                ),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: <Widget>[
                    Expanded(child: Divider(color: Colors.grey, height: 3)),
                    Row(
                        children:<Widget>[
                          Text(
                            "بيانات الدفع",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.credit_card,
                              color: Colors.green, size: 30),
                        ]),
                  ]),
                ),
                SizedBox(height: 8),
                Card(
                  elevation: 4,
                  child:Column(
                      mainAxisSize: MainAxisSize.min,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.all(15.0),
                          child: Row(children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                height: 35,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.grey[400], width: 2),
                                  color: Colors.grey[100],
                                  borderRadius: BorderRadius.circular(7),
                                ),
                                child: Center(
                                  child:Text(
                                    "450 رس",
                                    style: TextStyle(
                                        fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 2,
                              child: Container(
                                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                  margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                  height: 35,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey[400], width: 2),
                                    color: Colors.grey[100],
                                    borderRadius: BorderRadius.circular(7),
                                  ),
                                  child: Center(
                                    child:Text(
                                      "فيزا كارد",
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                    ),
                                  )),
                            ),
                          ]),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Text(
                                "450 رس",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Expanded(
                              flex:2,
                              child: ListTile(
                                title: Text(
                                  "ملخص السلة",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                ),
                                trailing: Icon(Icons.shopping_basket,
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
                                flex:1,
                                child: Text(
                                  "220  رس",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                )),
                            Expanded(
                                flex:2,
                                child: ListTile(
                                  title: Text(
                                    "تكلفة التوصيل",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Tajawal-Regular'),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                  ),
                                  trailing: Icon(Icons.map,
                                      color: Colors.grey[300], size: 30),
                                )),
                          ],
                        ),
                        Divider(color: Colors.grey, height: 3),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            Expanded(
                                flex:1,
                                child: Text(
                                  "770  رس",
                                  style: TextStyle(
                                      color: Colors.grey,
                                      fontSize: 12,
                                      fontFamily: 'Tajawal-Regular'),
                                  textDirection: TextDirection.rtl,
                                  textAlign: TextAlign.center,
                                )),
                            Expanded(
                                flex:2,
                                child: ListTile(
                                  title: Text(
                                    "اجمالي الطلب",
                                    style: TextStyle(
                                        color: Colors.grey,
                                        fontSize: 12,
                                        fontFamily: 'Tajawal-Regular'),
                                    textDirection: TextDirection.rtl,
                                    textAlign: TextAlign.center,
                                  ),
                                  trailing: Icon(Icons.cached,
                                      color: Colors.grey[300], size: 30),
                                )),
                          ],
                        ),
                        Divider(color: Colors.grey, height: 3),
                        SizedBox(height: 20),
                        Container(
                          margin: EdgeInsets.fromLTRB(8, 0, 8, 0),
                          decoration: BoxDecoration(
                            border: Border.all(color: Colors.grey[400], width: 2),
                            color: Colors.grey[100],
                            borderRadius: BorderRadius.circular(7),
                          ),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:<Widget>[
                                Container(
                                  width: 100,
                                  height:35,
                                  margin:EdgeInsets.all(2),
                                  decoration: BoxDecoration(
                                      color: Colors.grey, borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Text(
                                      'كوبون التخفيض',
                                      style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.white),

                                    ),
                                  ),
                                ),
                                Expanded(
                                    child: Center(
                                      child:Text(
                                        "4657672",
                                        textDirection: TextDirection.rtl,
                                        style: TextStyle(
                                            fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
                                      ),
                                    ))
                              ]),
                        ),
                        SizedBox(height: 30),

                      ]),
                ),
                SizedBox(height: 15),
                GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/dashboard', arguments: 5);
                  },
                  child: Container(
                    height: 55,
                    width:(MediaQuery.of(context).size.width)*0.5,
                    padding: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                        color: Colors.deepOrange,
                        borderRadius:
                        BorderRadius.vertical(top: Radius.circular(8))),
                    child: Center(
                      child: Text("رجوع",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Tajawal-Regular',
                              color: Colors.white70)),
                    ),
                  ),
                ),
                SizedBox(height: 25),
              ]),
        )
    );
  }
}