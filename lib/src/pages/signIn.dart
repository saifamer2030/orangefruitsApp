import 'package:flutter/material.dart';
// my imports
// import '../../data/data.dart';

class SignInPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController editNameController = new TextEditingController();
    TextEditingController editPasswordController = new TextEditingController();

    return WillPopScope(
        onWillPop: () async => false,
        child: Scaffold(
        body: Padding(
      padding: const EdgeInsets.all(15.0),
      child: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Image.asset("assets/images/logo.png",
                    width: 200, height: 180),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Text("التسجيل",
                    style:
                        TextStyle(fontFamily: 'Tajawal-Regular', fontSize: 24)),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: editNameController,
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                    labelText: "الإسم",
                    labelStyle: TextStyle(
                        fontFamily: 'Tajawal-Regular',
                        color: Theme.of(context).focusColor),
                    contentPadding: EdgeInsets.all(12),
                    hintText: 'الإسم',
                    hintStyle: TextStyle(
                        fontFamily: 'Tajawal-Regular',
                        color: Theme.of(context).focusColor.withOpacity(0.7)),
                    prefixIcon: Icon(Icons.account_circle,
                        color: Theme.of(context).focusColor),
                  ),
                ),
              ),
              SizedBox(height: 30),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: TextField(
                  controller: editPasswordController,
                  keyboardType: TextInputType.text,
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: "كلمة المرور",
                    labelStyle: TextStyle(
                        fontFamily: 'Tajawal-Regular',
                        color: Theme.of(context).focusColor),
                    contentPadding: EdgeInsets.all(12),
                    hintText: '••••••••••',
                    hintStyle: TextStyle(
                        fontFamily: 'Tajawal-Regular',
                        color: Theme.of(context).focusColor.withOpacity(0.7)),
                    prefixIcon: Icon(Icons.phonelink_lock,
                        color: Theme.of(context).focusColor),
                    suffixIcon: IconButton(
                      onPressed: () {},
                      color: Theme.of(context).focusColor,
                      icon: Icon(
                          22 == 22 ? Icons.visibility : Icons.visibility_off),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed('/shimmerEffect');
                },
                child: Container(
                  width: 250,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'تسجيل الدخول',
                      style: TextStyle(
                          fontFamily: 'Tajawal-Regular', color: Colors.white),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: GestureDetector(
                  onTap: () {
                    Navigator.of(context)
                        .pushReplacementNamed('/ForgetPassword', arguments: 4);
                  },
                  child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Text(
                        "نسيت كلمة المرور",
                        style: TextStyle(
                            fontFamily: 'Tajawal-Regular',
                            color: Theme.of(context).focusColor),
                        textAlign: TextAlign.right,
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Row(
                  children: <Widget>[
                    Expanded(child: Divider(height: 2)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                      child: Text("او",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontFamily: 'Tajawal-Regular',
                          )),
                    ),
                    Expanded(child: Divider(height: 2)),
                  ],
                ),
              ),
              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Navigator.of(context)
                      .pushReplacementNamed('/signUp', arguments: 3);
                },
                child: Container(
                  width: 250,
                  padding: EdgeInsets.symmetric(vertical: 16),
                  decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(15)),
                  child: Center(
                    child: Text(
                      'حساب جديد',
                      style: TextStyle(
                          fontFamily: 'Tajawal-Regular', color: Colors.white),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }
}
