import 'package:flutter/material.dart';

class UiHelper {
  static CustomButton({
    required VoidCallback callBack,
    required String buttonName,
  }) {
    return SizedBox(
      height: 35,
      width: 300,
      child: ElevatedButton(
        onPressed: () {
          callBack();
        },
        style: ElevatedButton.styleFrom(backgroundColor: Colors.green),

        child: Text(
          '${buttonName}',
          style: TextStyle(fontSize: 14, color: Colors.white),
        ),
      ),
    );
  }

  static CustomText({
    required String text,
    required double height,
    Color? color,
    FontWeight? fontweight,
  }) {
    return Text(
      text,
      style: TextStyle(
        fontSize: height,
        color: color ?? Color(0xFF5E5E5E),
        fontWeight: fontweight,
      ),
    );
  }
}
