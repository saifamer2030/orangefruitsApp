import 'package:flutter/material.dart';
// my imports
// import '../../data/data.dart';

class RestorePasswordPage extends StatefulWidget {
  @override
  _RestorePasswordPageState createState() => _RestorePasswordPageState();
}

class _RestorePasswordPageState extends State<RestorePasswordPage> {
  bool _isSuccess;
  void initState() {
    _isSuccess = false;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async => true,
        child: Scaffold(
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
                  SizedBox(height: 60),
                  !_isSuccess
                      ? _buildDefultWidgets(context)
                      : _buildSuccessWidgets(context),
                ],
              ),
            ),
          ),
        )));
  }

  Widget _buildSuccessWidgets(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Icon(Icons.check_circle, size: 70, color: Colors.black),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "تم ارسال كلمة مرور جديدة في رقم الهاتف",
            style: TextStyle(color: Theme.of(context).focusColor),
            textAlign: TextAlign.right,
          ),
        ),
        SizedBox(height: 30),
        GestureDetector(
          onTap: () {
            setState(() {
              _isSuccess = false;
              Navigator.of(context)
                  .pushReplacementNamed('/signIn', arguments: 3);
            });
          },
          child: Container(
            width: 250,
            padding: EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
                color: Colors.deepOrange,
                borderRadius: BorderRadius.circular(15)),
            child: Center(
              child: Text(
                'موافق',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildDefultWidgets(BuildContext context) {
    TextEditingController editNameController = new TextEditingController();
    TextEditingController editPhoneController = new TextEditingController();

    return Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: editNameController,
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                labelText: "الاسم",
                labelStyle: TextStyle(color: Theme.of(context).focusColor),
                contentPadding: EdgeInsets.all(12),
                hintText: 'الاسم',
                hintStyle: TextStyle(
                    color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.account_circle,
                    color: Theme.of(context).focusColor),
              ),
            ),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: TextField(
              controller: editPhoneController,
              keyboardType: TextInputType.phone,
              decoration: InputDecoration(
                labelText: "رقم الهاتف",
                labelStyle: TextStyle(color: Theme.of(context).focusColor),
                contentPadding: EdgeInsets.all(12),
                hintText: 'رقم الهاتف',
                hintStyle: TextStyle(
                    color: Theme.of(context).focusColor.withOpacity(0.7)),
                prefixIcon: Icon(Icons.account_circle,
                    color: Theme.of(context).focusColor),
              ),
            ),
          ),
          SizedBox(height: 30),
          GestureDetector(
            onTap: () {
              setState(() {
                _isSuccess = true;
              });
            },
            child: Container(
              width: 250,
              padding: EdgeInsets.symmetric(vertical: 16),
              decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  borderRadius: BorderRadius.circular(15)),
              child: Center(
                child: Text(
                  'استعادة كلمة المرور',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ),
        ]);
  }
}
