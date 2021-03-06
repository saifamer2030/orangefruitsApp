import 'package:flutter/material.dart';
// my imports 
import 'pages.dart';

class DeliveryPage extends StatefulWidget {
  @override
  _DeliveryPageState createState() => _DeliveryPageState();
}

class _DeliveryPageState extends State<DeliveryPage> {
  bool isChecked = false;
  bool isSaved = false;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    Widget checkAnotherPerson() {
      return Padding(
        padding: EdgeInsets.symmetric(horizontal: 4),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
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
                isSaved = !isSaved;
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
                  isSaved
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
            onTap: () {
//              setState(() {
//                DeliveryStepperPage(currentPage:2);
//              });

              Navigator.push(context,MaterialPageRoute(
                builder:(context)=>DeliveryStepperPage(currentPage:3),
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
