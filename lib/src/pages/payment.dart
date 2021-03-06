import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  @override
  _PaymentPageState createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  bool isCash = true;
  bool isCreadedCard = false;
  bool isBank = false;
  bool isSaved = false;
  int i = 1;
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: ListView(children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8),
            child: Row(children: <Widget>[
              Expanded(child: Divider(color: Colors.grey, height: 3)),
              Text(
                "وسيلة الدفع",
                style: TextStyle(
                    color: Colors.deepOrange,
                    fontSize: 12,
                    fontFamily: 'Tajawal-Regular'),
                textDirection: TextDirection.rtl,
                textAlign: TextAlign.center,
              ),
              Icon(Icons.payment, color: Colors.grey, size: 30)
            ]),
          ),
          Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isBank = !isBank;
                      isCreadedCard = false;
                      isCash = false;
                    });
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "تحويل بنكي",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Tajawal-Regular'),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                        isBank
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCreadedCard = !isCreadedCard;
                      isCash = false;
                      isBank = false;
                    });
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "مدى",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Tajawal-Regular'),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                        isCreadedCard
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCreadedCard = !isCreadedCard;
                      isCash = false;
                      isBank = false;
                    });
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "فيزا كارد + ماستر",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Tajawal-Regular'),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                        isCreadedCard
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
                GestureDetector(
                  onTap: () {
                    setState(() {
                      isCash = !isCash;
                      isCreadedCard = false;
                      isBank = false;
                    });
                  },
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "كاش",
                          style: TextStyle(
                              color: Colors.grey,
                              fontSize: 12,
                              fontFamily: 'Tajawal-Regular'),
                          textDirection: TextDirection.rtl,
                          textAlign: TextAlign.center,
                        ),
                        isCash
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
              ]),
          SizedBox(height: 15),
          isCash ? _buildCash() : Container(),
          isCreadedCard ? _buildCreadedCard() : Container(),
          isBank ? _buildBank() : Container(),
          SizedBox(height: 15),
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
                flex: 2,
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
                  flex: 1,
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
                  flex: 2,
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
                    trailing:
                        Icon(Icons.map, color: Colors.grey[300], size: 30),
                  )),
            ],
          ),
          Divider(color: Colors.grey, height: 3),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Expanded(
                  flex: 1,
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
                  flex: 2,
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
                    trailing:
                        Icon(Icons.cached, color: Colors.grey[300], size: 30),
                  )),
            ],
          ),
          Divider(color: Colors.grey, height: 3),
          SizedBox(height: 15),
          Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[400], width: 2),
              color: Colors.grey[100],
              borderRadius: BorderRadius.circular(7),
            ),
            child: Center(
                child: ListTile(
              leading: Container(
                width: 70,
                height: 40,
                decoration: BoxDecoration(
                    color: Colors.deepOrange,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                  child: Text(
                    'تطبيق',
                    style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Tajawal-Regular',
                        color: Colors.white),
                  ),
                ),
              ),
              title: TextField(
                decoration: InputDecoration(
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(5),
                  hintText: "هل لديك كوبون تخفيض",
                  border: InputBorder.none,
                ),
                textDirection: TextDirection.rtl,
                cursorColor: Colors.grey[500],
                style: TextStyle(
                    fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
              ),
            )),
          ),
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
                    "الموافقه علي سياسة الخصوصية",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontFamily: 'Tajawal-Regular'),
                    textDirection: TextDirection.rtl,
                    textAlign: TextAlign.center,
                  ),
                  isSaved
                      ? Icon(
                          Icons.check_box,
                          color: Colors.green,
                        )
                      : Icon(
                          Icons.check_box_outline_blank,
                          color: Colors.grey,
                        )
                ]),
          ),
          SizedBox(height: 25),
          GestureDetector(
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed('/orders', arguments: 5);
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
          SizedBox(height: 8),
        ]));
  }

  Widget _buildBank() {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
                  hintText: "بنك الرياض",
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
                  hintText: "رقم الحساب 3457643",
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
            flex: 3,
            child: Container(
              padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
              margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400], width: 2),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                  child: Text(
                "قم بإرفاق صورة الايداع البنكي",
                style: TextStyle(
                    fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
              )),
            ),
          ),
          SizedBox(width: 8),
          Expanded(
            flex: 1,
            child: Container(
              height: 45,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey[400], width: 2),
                color: Colors.grey[100],
                borderRadius: BorderRadius.circular(7),
              ),
              child: Center(
                  child: IconButton(
                onPressed: () {},
                icon: Icon(
                  Icons.image,
                  color: Colors.grey,
                ),
              )),
            ),
          ),
        ]),
      ),
    ]);
  }

  Widget _buildCreadedCard() {
    return Column(mainAxisSize: MainAxisSize.min, children: <Widget>[
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
            hintText: "اسم صاحب الحساب",
            border: InputBorder.none,
          ),
          textDirection: TextDirection.rtl,
          cursorColor: Colors.grey[300],
          style:
              TextStyle(fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
        ),
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
            hintText: "ادخل رقم البطاقة",
            border: InputBorder.none,
          ),
          textDirection: TextDirection.rtl,
          cursorColor: Colors.grey[300],
          style:
              TextStyle(fontFamily: 'Tajawal-Regular', color: Colors.grey[300]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Row(children: <Widget>[
          Expanded(
            flex: 1,
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
                  hintText: "الرقم السري",
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
                  hintText: "السنه",
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
                  hintText: "الشهر",
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
    ]);
  }

  Widget _buildCash() {
    return Container(
      padding: EdgeInsets.fromLTRB(0.0, 2.0, 0.0, 7),
      margin: EdgeInsets.fromLTRB(8, 0, 0, 0),
      height: 35,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[400], width: 2),
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(7),
      ),
      child: Center(
          child: Text(
        "تم اختيار الدفع عبر الاستلام",
        style:
            TextStyle(fontFamily: 'Tajawal-Regular', color: Colors.grey[500]),
      )),
    );
  }
}
