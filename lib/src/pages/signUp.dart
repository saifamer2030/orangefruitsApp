import 'package:flutter/material.dart';
// my imports
// import '../../data/data.dart';

class SignUpPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const SignUpPage({Key key, this.parentScaffoldKey}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  @override
  Widget build(BuildContext context) {
    TextEditingController editNameController = new TextEditingController();
    TextEditingController editPhoneController = new TextEditingController();
    TextEditingController editPasswordController = new TextEditingController();
    return WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
          key: widget.parentScaffoldKey,
          body: Padding(
            padding: const EdgeInsets.all(10.0),
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
                    SizedBox(height: 10),
                    TextField(
                      controller: editNameController,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                        labelText: "الاسم",
                        labelStyle:
                            TextStyle(color: Theme.of(context).focusColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: 'الاسم',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.account_circle,
                            color: Theme.of(context).focusColor),
                      ),
                    ),
                    SizedBox(height: 10),
                    TextField(
                      controller: editPhoneController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(
                        labelText: "رقم الهاتف",
                        labelStyle:
                            TextStyle(color: Theme.of(context).focusColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: '+9999999999999',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.phone,
                            color: Theme.of(context).focusColor),
                      ),
                    ),
                    SizedBox(height: 30),
                    TextField(
                      controller: editPasswordController,
                      keyboardType: TextInputType.text,
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: "كلمة المرور",
                        labelStyle:
                            TextStyle(color: Theme.of(context).focusColor),
                        contentPadding: EdgeInsets.all(12),
                        hintText: '••••••••••',
                        hintStyle: TextStyle(
                            color:
                                Theme.of(context).focusColor.withOpacity(0.7)),
                        prefixIcon: Icon(Icons.phonelink_lock,
                            color: Theme.of(context).focusColor),
                        suffixIcon: IconButton(
                          onPressed: () {},
                          color: Theme.of(context).focusColor,
                          icon: Icon(22 == 22
                              ? Icons.visibility
                              : Icons.visibility_off),
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacementNamed(
                            '/pinCodeVerification',
                            arguments: 7);
                      },
                      child: Container(
                        width: 250,
                        padding: EdgeInsets.symmetric(vertical: 16),
                        decoration: BoxDecoration(
                            color: Colors.deepOrange,
                            borderRadius: BorderRadius.circular(15)),
                        child: Center(
                          child: Text(
                            'تسجيل',
                            style: TextStyle(color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.of(context)
                              .pushReplacementNamed('/signIn', arguments: 3);
                        },
                        child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "لديك حساب بالفعل",
                              style: TextStyle(
                                  color: Theme.of(context).focusColor),
                              textAlign: TextAlign.right,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ));
  }
}
