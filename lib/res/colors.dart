import 'package:flutter/material.dart';

Color _colorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

// App colors
final Color mTitleColor = _colorFromHex("#5A5A5A");
final Color mSubTitleColor = _colorFromHex("#B1AEAE");
final Color mWidgetBgColor = _colorFromHex("#EDEFF0");
final Color mShadowColor = _colorFromHex("#848484").withOpacity(57);
final Color mBgColor = _colorFromHex("#ffffff");
final Color mErrorColor = _colorFromHex("#FC6180");
final Color mActiveColor = _colorFromHex("#84AD1C");
final Color mBlockColor = _colorFromHex("#464646");
final Color mCursorColor = _colorFromHex("#FEAA01");
final Color mPrimaryColor = _colorFromHex("#FD7311");
final Color mAccentColor = _colorFromHex("#F47016").withOpacity(49);
