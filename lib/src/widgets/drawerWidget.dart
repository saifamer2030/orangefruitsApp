import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DrawerWidget extends StatefulWidget {
  @override
  _DrawerWidgetState createState() => _DrawerWidgetState();
}

class _DrawerWidgetState extends State<DrawerWidget> {
  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(
          children: <Widget>[
            Card(
              color: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(4.0)),
              ),
              elevation: 4,
              child: Container(
                height: 125,
                padding: const EdgeInsets.all(8.0),
                child: Center(
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
            ),
            Container(
                child: Center(
                    child: Card(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(4.0)),
                        ),
                        elevation: 4,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(8, 16, 8, 8),
                          child: Column(children: <Widget>[
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/dashboard', arguments: 2);
                              },
                              leading: Text(''),
                              trailing: Icon(
                                Icons.language,
                                color: Colors.grey,
                              ),
                              title: Row(
                                children: <Widget>[
                                  Text(
                                    "العربية",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                      fontSize: 16,
                                    ),
                                  ),
                                  SizedBox(width: 50),
                                  Text(
                                    "اللغة",
                                    style: TextStyle(
                                      color: Colors.blueGrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/profile', arguments: 4);
                              },
                              leading: Text(''),
                              trailing: Icon(
                                Icons.account_circle,
                                color: Colors.blueGrey,
                              ),
                              title: Text(
                                "تعديل الصفحة الشخصية",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/orders', arguments: 0);
                              },
                              leading: Text(''),
                              trailing: Icon(
                                Icons.event_note,
                                color: Colors.blueGrey,
                              ),
                              title: Text(
                                "الطلبات",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/dashboard', arguments: 3);
                              },
                              trailing: Icon(
                                Icons.credit_card,
                                color: Colors.blueGrey,
                              ),
                              leading: Text(''),
                              title: Text(
                                "بيانات الدفع",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Divider(color: Colors.grey, height: 3),
                            ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed(
                                    '/deliveryStepperPage',
                                    arguments: 4);
                              },
                              leading: Text(''),
                              trailing: Icon(
                                Icons.directions_bike,
                                color: Colors.blueGrey,
                              ),
                              title: Text(
                                "بيانات التوصيل",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Expanded(
                                    child: Divider(
                                        color: Colors.orange, height: 3)),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "المزيد",
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Expanded(
                                    child: Divider(
                                        color: Colors.orange, height: 3)),
                              ],
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/aboutApp', arguments: 3);
                              },
                              leading: Icon(
                                Icons.phone_android,
                                color: Colors.blueGrey,
                              ),
                              title: Text(
                                "عن التطبيق",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.of(context)
                                    .pushNamed('/dashboard', arguments: 4);
                              },
                              leading: Icon(
                                Icons.phone_in_talk,
                                color: Colors.blueGrey,
                              ),
                              title: Text(
                                "اتصل بنا",
                                style: TextStyle(
                                  color: Colors.blueGrey,
                                ),
                              ),
                            ),
                            ListTile(
                              onTap: () {
                                Navigator.of(context).pushNamed('/sginIn');
                              },
                              trailing: Icon(
                                Icons.exit_to_app,
                                color:
                                    Theme.of(context).focusColor.withOpacity(1),
                              ),
                              title: Text(
                                "تسجيل الخروج",
                                style: TextStyle(
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ]),
                        ))))
          ],
        ),
      ),
    );
  }
}
