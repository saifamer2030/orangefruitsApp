import 'package:flutter/material.dart';
import 'pages.dart';
// ignore: must_be_immutable
class DeliveryTimelinePage extends StatefulWidget {
  int tracker;
  DeliveryTimelinePage({this.tracker});
  @override
  _DeliveryTimelinePageState createState() => _DeliveryTimelinePageState();
}

class _DeliveryTimelinePageState extends State<DeliveryTimelinePage> {
  @override
  void initState() {
    super.initState();
    widget.tracker = 1;
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
            child:Scaffold(
      appBar: _AppBar(),
      backgroundColor: Colors.grey[100],
      body: Column(
        children: <Widget>[
          _Header(control: widget.tracker,),
          Expanded(child: _Body()),
        ],
      ),
    ));
  }
}

class _Body extends StatefulWidget {
  @override
  __BodyState createState() => __BodyState();
}

class __BodyState extends State<_Body> {
  bool isChecked = false;
  bool isSeved = false;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    Widget checkAnotherPerson() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Column(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: <Widget>[
              Expanded(child: Divider(color: Colors.grey, height: 3)),
              Text(
                "بيانات الشخص",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 12,
                    fontFamily: 'Tajawal-Regular'),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          SizedBox(height: 15),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "المدينة",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "المحافظة",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400], width: 2),
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "الشارع",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
              ),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "الحي",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
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
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                hintText: "وصف المنزل",
                border: InputBorder.none,
              ),
              textDirection: TextDirection.rtl,
              cursorColor: Colors.grey[300],
              style: TextStyle(
                  fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
            ),
          ),
        ]),
      );
    }

    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: <Widget>[
              Expanded(child: Divider(color: Colors.grey, height: 3)),
              Text(
                "التوصيل",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 12,
                    fontFamily: 'Tajawal-Regular'),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
              Icon(Icons.directions_bike, color: Colors.grey, size: 30)
            ]),
          ),
          GestureDetector(
            onTap: () {
              setState(() {
                isChecked = !isChecked;
              });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "استلام الطلب عبر شخص اخر",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  isChecked
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.deepOrange,
                        )
                      : Icon(
                          Icons.radio_button_unchecked,
                          color: Colors.grey,
                        )
                ]),
          ),
          isChecked ? checkAnotherPerson() : Container(),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: <Widget>[
              Expanded(child: Divider(color: Colors.grey, height: 3)),
              Text(
                "مكان التوصيل",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 12,
                    fontFamily: 'Tajawal-Regular'),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
            ]),
          ),
          SizedBox(height: 15),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "المدينة",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "المحافظة",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
              ),
            ]),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Row(children: <Widget>[
              Expanded(
                flex: 2,
                child: Container(
                  padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                  margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                  height: 35,
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey[400], width: 2),
                    color: Colors.grey[100],
                    borderRadius: BorderRadius.circular(7),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "الشارع",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
              ),
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
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[200],
                      contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                      hintText: "الحي",
                      border: InputBorder.none,
                    ),
                    textDirection: TextDirection.rtl,
                    cursorColor: Colors.grey[300],
                    style: TextStyle(
                        fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
                  ),
                ),
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
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.grey[200],
                contentPadding: EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                hintText: "وصف المنزل",
                border: InputBorder.none,
              ),
              textDirection: TextDirection.rtl,
              cursorColor: Colors.grey[300],
              style: TextStyle(
                  fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
            ),
          ),
          SizedBox(height: 15),
          GestureDetector(
            onTap: () {
              setState(() {
                isSeved = !isSeved;
              });
            },
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text(
                    "حفظ هذه البيانات",
                    style: TextStyle(
                        color: Colors.deepOrange,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  isSeved
                      ? Icon(
                          Icons.check_circle,
                          color: Colors.deepOrange,
                        )
                      : Icon(
                          Icons.radio_button_unchecked,
                          color: Colors.grey,
                        )
                ]),
          ),
          SizedBox(height: 15),
           GestureDetector(
            onTap: () {Navigator.push(context,MaterialPageRoute(
                builder:(context)=>DeliveryStepperPage(currentPage: 2),
              ));
            },
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.green, borderRadius: BorderRadius.circular(15)),
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
          SizedBox(height: 100),
        ]));
  }
}

class _Header extends StatefulWidget {
  final int control;
  _Header({@required this.control});

  __HeaderState createState() => __HeaderState();
}

class __HeaderState extends State<_Header> {
  Widget painter(bool isChecked,bool wait) {
    return isChecked
        ? Icon(
            Icons.check_circle,
            color: Colors.deepOrange,
          )
        : ( wait
            ? Icon(
                Icons.av_timer,
                color: Colors.blueGrey,
              )
            : Icon(
                Icons.radio_button_unchecked,
                color: Colors.grey,
              ));
  }

  Widget control1() {
    return this.widget.control > 0 ? painter(true,false) : painter(false,true);
  }

  Widget control2() {
    return this.widget.control > 1 ? painter(true,false) : painter(false,true);
  }

  Widget control3() {
    return this.widget.control > 2 ? painter(true,false) : painter(false,true);
  }

  Widget line() {
    return Container(
      color: Colors.grey,
      height: 5.0,
      width: 50.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 3.0,
        child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Row(
              children: <Widget>[
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Text(
                    "الدفع",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  control3(),
                ]),
                Expanded(child: line()),
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Text(
                    "التوصيل",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  control2(),
                ]),
                Expanded(child: line()),
                Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
                  Text(
                    "السلة",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  control1(),
                ]),
              ],
            )));
  }
}

class _AppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.grey[100],
      leading: Stack(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.shopping_cart, color: Colors.deepOrange),
            onPressed: () {},
          ),
          Positioned(
            top: 3,
            right: 4,
            child: Container(
                padding: EdgeInsets.all(3),
                height: 15,
                width: 15,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.orange[400],
                ),
                child: Center(
                  child: Text("1",
                      style: TextStyle(
                          fontFamily: 'Tajawal-Regular',
                          color: Colors.white70)),
                )),
          ),
        ],
      ),
      actions: <Widget>[
        IconButton(
          icon: Icon(Icons.format_align_right, color: Colors.deepOrange),
          onPressed: () {},
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
