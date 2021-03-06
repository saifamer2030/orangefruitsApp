import 'package:flutter/material.dart';
import 'package:orangefruits/res/res.dart';
import 'package:pin_code_text_field/pin_code_text_field.dart';
import 'package:pinput/pin_put/pin_put.dart';
// my imports
// import '../../data/data.dart';

class PinCodeVerificationPage extends StatefulWidget {
  final GlobalKey<ScaffoldState> parentScaffoldKey;

  const PinCodeVerificationPage({Key key, this.parentScaffoldKey})
      : super(key: key);

  @override
  _PinCodeVerificationPageState createState() =>
      _PinCodeVerificationPageState();
}

class _PinCodeVerificationPageState extends State<PinCodeVerificationPage>
    with SingleTickerProviderStateMixin {
  var onTapRecognizer;
  String currentText = "";
  int pinLength = 4;
  bool hasError = false;
  String errorMassage;
  bool hasSuccess = false;
  TextEditingController _pinPutController;
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Colors.grey[400]),
      borderRadius: BorderRadius.circular(4),
    );
  }
  @override
  void initState() {
    _pinPutController = TextEditingController(text: "");
    super.initState();
  }

  @override
  void dispose() {
    _pinPutController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => hasSuccess ? false : true,
      child: Scaffold(
        key: widget.parentScaffoldKey,
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
                  SizedBox(height: 8),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30.0),
                    child: Text(
                      hasError ? "*قمت بإدخال كود خاطئ" : "",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12,
                          fontWeight: FontWeight.w400),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                _pinCode(),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      !hasSuccess
                          ? "قمنا بإرسال كود التفعيل الي هاتفك "
                          : "تم ادخال الكود بنجاع",
                      style: !hasSuccess
                          ? TextStyle(color: Colors.grey, fontSize: 15)
                          : TextStyle(
                              color: Colors.greenAccent,
                              fontSize: 12,
                              fontWeight: FontWeight.w400),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 15),
                  hasSuccess
                      ? _buildSuccessWidgets(context)
                      : _buildDefultWidgets(context),
                ])))),
      ),
    );
  }
  Widget _pinCode() {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.all(20),
      child: PinPut(
        fieldsCount: pinLength,
        onSubmit: (text) {
          print("DONE $text");
          print("DONE CONTROLLER ${_pinPutController.text}");
          if (_pinPutController.text == "0000") {
            hasError = false;
            hasSuccess = true;
            print("Successfully");
//            _pinPutController.clear();
          } else {
            hasError = true;
          }
        },
        onChanged:  (text) {
          setState(() {
            hasError = false;
          });
        },
        focusNode: _pinPutFocusNode,
        controller: _pinPutController,
        submittedFieldDecoration: _pinPutDecoration.copyWith(
            borderRadius: BorderRadius.circular(8)),
        selectedFieldDecoration: _pinPutDecoration,
        followingFieldDecoration: _pinPutDecoration.copyWith(
          borderRadius: BorderRadius.circular(8),
          border: Border.all(
            color: Colors.grey[300],
          ),
        ),
      ),
    );
  }
  Widget _buildDefultWidgets(BuildContext context) {
    return Column(children: <Widget>[
      GestureDetector(
        onTap: () {
          if (currentText.length != 4) {
            setState(() {
              hasError = true;
            });
          } else {
            setState(() {
              hasError = false;
              hasSuccess = true;
              print("Successfully");
              _pinPutController.text = "1234";
            });
          }
        },
        child: Container(
          width: 200,
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(15)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.near_me, color: Colors.white70),
              SizedBox(width: 30),
              Text(
                'تأكيد التسجيل',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
      SizedBox(height: 15),
      GestureDetector(
        onTap: () {
          _pinPutController.clear();
        },
        child: Container(
          width: 200,
          padding: EdgeInsets.symmetric(vertical: 16),
          decoration: BoxDecoration(
              color: Colors.deepOrange,
              borderRadius: BorderRadius.circular(15)),
          child: Center(
            child: Text(
              'إعادة ارسال الكود',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
    ]);
  }

  Widget _buildSuccessWidgets(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).pushReplacementNamed('/signIn', arguments: 4);
      },
      child: Container(
        width: 200,
        padding: EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: Colors.deepOrange, borderRadius: BorderRadius.circular(15)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Icon(Icons.near_me, color: Colors.white70),
            SizedBox(width: 30),
            Text(
              'استمرار',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }

}
