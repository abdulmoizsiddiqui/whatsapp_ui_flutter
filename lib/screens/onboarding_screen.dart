import 'package:flutter/material.dart';
import 'package:whatsapp_ui_flutter/main.dart';
import 'package:whatsapp_ui_flutter/screens/phoneno_screen.dart';
import 'package:whatsapp_ui_flutter/widgets/ui_helper.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(Object context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image(image: AssetImage('assets/images/image 1.png')),
            SizedBox(height: 30),
            UiHelper.CustomText(
              text: "Welcome to WhatsApp",
              height: 20,
              color: const Color.fromRGBO(0, 0, 0, 1),
            ),

            SizedBox(height: 25),

            Container(
              width: 300,
              child: Text.rich(
                TextSpan(
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Read out ',
                      style: TextStyle(
                        color: Colors.grey,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    TextSpan(
                      text: 'Privacy Policy. ',
                      style: TextStyle(color: Colors.blue),
                    ),
                    TextSpan(
                      text: 'Tap “Agree and continue” to accept the ',
                      style: TextStyle(color: Colors.grey),
                    ),
                    TextSpan(
                      text: 'Terms of Service',
                      style: TextStyle(color: Colors.blue),
                    ),
                  ],
                ),
              ),
            ),

            SizedBox(height: 50),

            UiHelper.CustomButton(
              callBack: () {},
              buttonName: 'Agree and continue',
            ),
          ],
        ),
      ),
    );
  }
}
