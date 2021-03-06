import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
// my imports
// import '../../data/data.dart';

class ProfilePage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const ProfilePage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

List<String> cityes = [
  "الرياض",
  "جدة",
  "الدمام",
  "مكة",
  "المدينة",
];
List<String> provinces = [
  "القصيم",
  "عسير",
  "الجوف",
  "حائل",
  "تبوك",
];

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          key: widget.parentScaffoldKey,
          body: Padding(
              padding: EdgeInsets.symmetric(horizontal: 8),
              child: ListView(children: <Widget>[
                Card(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(4.0)),
                  ),
                  elevation: 4,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: ListTile(
                      trailing: ClipOval(
                          child: Image.asset(
                        "assets/images/logo.png",
                      )),
                      title: Text(
                        "محمد عبد الماجد",
                        style: TextStyle(
                          color: Colors.grey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                      subtitle: Text(
                        "الدوحة",
                        style: TextStyle(
                          color: Colors.blueGrey,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
                ),
                Padding(
                    padding: const EdgeInsets.all(8),
                    child: Column(children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "البيانات الشخصية",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.account_circle,
                              color: Colors.deepOrange, size: 30)
                        ],
                      ),
                      Card(
                          elevation: 4,
                          child: Center(
                            child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.stretch,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "الاسم",
                                      ),
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[500]),
                                    ),
                                  ),
                                  Divider(color: Colors.grey, height: 3),
                                  Container(
                                    padding: EdgeInsets.all(8),
                                    margin: EdgeInsets.symmetric(
                                        horizontal: 8, vertical: 8),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      color: Colors.transparent,
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        border: InputBorder.none,
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "رقم الهاتف",
                                      ),
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ]),
                          )),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "بيانات التوصيل",
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                          Icon(Icons.directions_bike,
                              color: Colors.deepOrange, size: 30)
                        ],
                      ),
                      Card(
                          elevation: 4,
                          child:
                              Column(mainAxisSize: MainAxisSize.min, children: <
                                  Widget>[
                            ListTile(
                              leading: Icon(Icons.delete,
                                  color: Colors.grey[300], size: 30),
                              title: Text(
                                "الرياض - ام حمام - حي الامير علي- شارع 5",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                              trailing: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.orange[500],
                                ),
                                child: Icon(Icons.home,
                                    color: Colors.deepOrange, size: 20),
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              leading: Icon(Icons.delete,
                                  color: Colors.grey[300], size: 30),
                              title: Text(
                                "الرياض - ام حمام - حي الامير علي- شارع 5",
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                              trailing: Container(
                                padding: EdgeInsets.all(2),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.orange[500],
                                ),
                                child: Icon(Icons.home,
                                    color: Colors.deepOrange, size: 20),
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            SizedBox(height: 15),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2),
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "المدينة",
                                        border: InputBorder.none,
                                      ),
                                      textDirection: TextDirection.rtl,
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                    margin: EdgeInsets.fromLTRB(0, 0, 8, 0),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2),
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "المحافظة",
                                        border: InputBorder.none,
                                      ),
                                      textDirection: TextDirection.rtl,
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8),
                              child: Row(children: <Widget>[
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                    margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2),
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "الشارع",
                                        border: InputBorder.none,
                                      ),
                                      textDirection: TextDirection.rtl,
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    padding:
                                        EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                                    margin: EdgeInsets.symmetric(horizontal: 8),
                                    height: 35,
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                          color: Colors.grey[400], width: 2),
                                      color: Colors.grey[100],
                                      borderRadius: BorderRadius.circular(7),
                                    ),
                                    child: TextField(
                                      decoration: InputDecoration(
                                        fillColor: Colors.grey[200],
                                        contentPadding: EdgeInsets.fromLTRB(
                                            4.0, 6.0, 4.0, 7.0),
                                        hintText: "الحي",
                                        border: InputBorder.none,
                                      ),
                                      textDirection: TextDirection.rtl,
                                      cursorColor: Colors.grey[300],
                                      style: TextStyle(
                                          fontFamily: 'Tajawal-Regular',
                                          color: Colors.grey[300]),
                                    ),
                                  ),
                                ),
                              ]),
                            ),
                            Container(
                              padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
                              margin: EdgeInsets.symmetric(
                                  horizontal: 16, vertical: 8),
                              height: 35,
                              decoration: BoxDecoration(
                                border: Border.all(
                                    color: Colors.grey[400], width: 2),
                                color: Colors.grey[100],
                                borderRadius: BorderRadius.circular(7),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  fillColor: Colors.grey[200],
                                  contentPadding:
                                      EdgeInsets.fromLTRB(4.0, 6.0, 4.0, 7.0),
                                  hintText: "وصف المنزل",
                                  border: InputBorder.none,
                                ),
                                textDirection: TextDirection.rtl,
                                cursorColor: Colors.grey[300],
                                style: TextStyle(
                                    fontFamily: 'Tajawal-Regular',
                                    color: Colors.grey[300]),
                              ),
                            ),
                            SizedBox(height: 15),
                          ])),
                      SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/dashboard', arguments: 5);
                        },
                        child: Container(
                          width: 250,
                          padding: EdgeInsets.symmetric(vertical: 10),
                          decoration: BoxDecoration(
                              color: Colors.deepOrange,
                              borderRadius: BorderRadius.circular(15)),
                          child: Center(
                            child: Text(
                              'رجوع',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontFamily: 'Tajawal-Regular',
                                  color: Colors.white),
                            ),
                          ),
                        ),
                      ),
                    ])),
              ])),
        ));
  }
}
