import 'package:flutter/material.dart';
import 'package:timeline_tile/timeline_tile.dart';
// my imports 
// import '../../data/data.dart';
import '../models/models.dart';

// ignore: must_be_immutable
class CurrentOrdersPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;
  RouteArgument routeArgument;
  CurrentOrdersPage({Key key, this.routeArgument, this.scaffoldKey})
      : super(key: key);
  @override
  _CurrentOrdersPageState createState() => _CurrentOrdersPageState();
}

class _CurrentOrdersPageState extends State<CurrentOrdersPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: widget.scaffoldKey,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 8),
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
                                                  "الحالة : تم الارسال",
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
                                    color:Colors.orange[100]
                                ),
                                child:Icon(Icons.location_on,color:Colors.orange[400]),
                              )
                          ),
                          Positioned(
                              left:0.0,
                              bottom:-12,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:Colors.orange[100]
                                ),
                                child:Icon(Icons.chat,color:Colors.orange[400]),
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
                            "حالة الطلب",
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
                _TimelineDelivery(),
                SizedBox(height: 8),
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Row(children: <Widget>[
                    Expanded(child: Divider(color: Colors.grey, height: 3)),
                    Row(
                        children:<Widget>[
                          Text(
                            "ملاحظات المندوب",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.assignment_turned_in,
                              color: Colors.green, size: 20),
                        ]),
                  ]),
                ),
                SizedBox(height: 8),
                Container(
                    height:95,
                    child:Stack(
                        overflow: Overflow.visible,
                        fit: StackFit.passthrough,
                        children:<Widget>[
                          Card(
                            elevation: 4,
                            child:Column(
                                mainAxisSize: MainAxisSize.min,
                                children: <Widget>[
                                  ListTile(
                                    title: Text(
                                      "محمد محمود عمر",
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 16,
                                          fontFamily: 'Tajawal-Regular'),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                    ),
                                    subtitle: Expanded(
                                       child: Text(
                                        "انا في الطريق خلي الفلوس جاهزة",
                                        style: TextStyle(
                                            color: Colors.grey[400],
                                            fontSize: 12,
                                            fontFamily: 'Tajawal-Regular'),
                                        textDirection: TextDirection.rtl,
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                    trailing: Icon(Icons.cloud,
                                        color: Colors.grey[300], size: 30),
                                  ),
                                  Row(
                                      mainAxisAlignment:MainAxisAlignment.end,
                                      children:<Widget>[
                                        Text(
                                          "قبل ساعة",
                                          style: TextStyle(
                                              color: Colors.grey[300],
                                              fontSize: 10,
                                              fontFamily: 'Tajawal-Regular'),
                                          textDirection: TextDirection.rtl,
                                          textAlign: TextAlign.center,
                                        ),
                                        Icon(Icons.timer,
                                            color: Colors.grey[300], size: 12),
                                      ]
                                  )
                                ]),
                          ),
                          Positioned(
                              left:0.0,
                              bottom:-12,
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color:Colors.orange[100]
                                ),
                                child:Icon(Icons.chat,color:Colors.orange[400]),
                              )
                          ),
                        ]
                    )
                ),
                SizedBox(height: 25),
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
                        BorderRadius.circular(8),
                        ),
                    child: Center(
                      child: Text("انهاء",
                          style: TextStyle(
                              fontSize: 18,
                              fontFamily: 'Tajawal-Regular',
                              color: Colors.white70)),
                    ),
                  ),
                ),
                SizedBox(height: 25),
                Text(
                  "لا يتم تفعيل انهاء الطلب الا بعد تسليم الطلبيه",
                  style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                      fontFamily: 'Tajawal-Regular'),
                  textDirection: TextDirection.rtl,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 18),
              ]),
        )
    );
  }
}

class _TimelineDelivery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: <Widget>[
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            isFirst: true,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.deepOrange,
              padding: EdgeInsets.all(6),
            ),
            rightChild: const _RightChild(
              asset: 'assets/images/delivery/Card.png',
              title: 'تم ارسال الطلب',
              message: 'تم ارسال الطلب سيتم التواصل معك وارسال الطلبية في الوقت المحدد في التطبيق',
            ),
            topLineStyle: const LineStyle(
              color: Colors.deepOrange,
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.deepOrange,
              padding: EdgeInsets.all(6),
            ),
            rightChild: const _RightChild(
              asset: 'assets/images/delivery/Bike.png',
              title: 'المندوب في الطريق',
              message: 'مندوبنا في الطريق اليك الرجاء متابعة الطلب وتقييم الطلب والمندوب بعد التسليم',
            ),
            topLineStyle: const LineStyle(
              color: Colors.grey,
            ),
          ),
          TimelineTile(
            alignment: TimelineAlign.manual,
            lineX: 0.1,
            indicatorStyle: const IndicatorStyle(
              width: 20,
              color: Colors.deepOrange,
              padding: EdgeInsets.all(6),
            ),
            rightChild: const _RightChild(
              asset: 'assets/images/delivery/Fill.png',
              title: 'تم تسليم الطلبية',
              message: 'قام مندوبنا بتسليم الطلبية الي الموقع المحدد وفي الزمن المحدد لانهاء الطلب اضغط انهاء',
            ),
            topLineStyle: const LineStyle(
              color: Colors.grey,
            ),
            bottomLineStyle: const LineStyle(
              color: Color(0xFFDADADA),
            ),
          ),

        ],
      ),
    );
  }
}

class _RightChild extends StatelessWidget {
  const _RightChild({
    Key key,
    this.asset,
    this.title,
    this.message,
    this.disabled = false,
  }) : super(key: key);

  final String asset;
  final String title;
  final String message;
  final bool disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Row(
        children: <Widget>[
          Opacity(
            child: Image.asset(asset, height: 50),
            opacity: disabled ? 0.5 : 1,
          ),
          const SizedBox(width: 10),
          Expanded(
              child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                  title,
                  style: TextStyle(
                    color: disabled
                        ? const Color(0xFFBABABA)
                        : const Color(0xFF636564),
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 6),
                Expanded(
                   child: Text(
                    message,
                    style: TextStyle(
                      color: disabled
                          ? const Color(0xFFD5D5D5)
                          : const Color(0xFF636564),
                      fontSize: 10,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
