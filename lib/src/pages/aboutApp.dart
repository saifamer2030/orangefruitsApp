import 'package:flutter/material.dart';
// my imports 
import '../models/models.dart';
import '../../data/data.dart';

class AboutAppPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const AboutAppPage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _AboutAppPageState createState() => _AboutAppPageState();
}

class _AboutAppPageState extends State<AboutAppPage>
    with SingleTickerProviderStateMixin {
  AboutApp aboutApp = MockData.aboutApp;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset("assets/images/logo.png",
                    width: 200, height: 180),
              ),
            ),
            Padding(
                padding: const EdgeInsets.all(8),
                child: Column(children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "عن التطبيق",
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
                          child: Text(
                            aboutApp.description,
                            style: TextStyle(
                                color: Colors.grey,
                                fontSize: 12,
                                fontFamily: 'Tajawal-Regular'),
                            textDirection: TextDirection.rtl,
                            textAlign: TextAlign.center,
                          ),
                        ),
                      )),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "بيانات التواصل",
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
                  Card(
                      elevation: 4,
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      aboutApp.phoneOne,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: 'Tajawal-Regular'),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                    ),
                                    trailing: Icon(Icons.phone,
                                        color: Colors.grey[300], size: 30),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      aboutApp.phoneOne,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 12,
                                          fontFamily: 'Tajawal-Regular'),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                    ),
                                    trailing: Icon(Icons.phone,
                                        color: Colors.grey[300], size: 30),
                                  ),
                                ),
                              ],
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              title: Text(
                                aboutApp.address,
                                style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                    fontFamily: 'Tajawal-Regular'),
                                textDirection: TextDirection.rtl,
                                textAlign: TextAlign.center,
                              ),
                              trailing: Icon(Icons.location_on,
                                  color: Colors.grey[300], size: 30),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            Row(
                              children: <Widget>[
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      aboutApp.email,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontFamily: 'Tajawal-Regular'),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                    ),
                                    trailing: Icon(Icons.email,
                                        color: Colors.grey[300], size: 30),
                                  ),
                                ),
                                Expanded(
                                  child: ListTile(
                                    title: Text(
                                      aboutApp.website,
                                      style: TextStyle(
                                          color: Colors.grey,
                                          fontSize: 10,
                                          fontFamily: 'Tajawal-Regular'),
                                      textDirection: TextDirection.rtl,
                                      textAlign: TextAlign.center,
                                    ),
                                    trailing: Icon(Icons.language,
                                        color: Colors.grey[300], size: 30),
                                  ),
                                ),
                              ],
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
    );
  }
}
