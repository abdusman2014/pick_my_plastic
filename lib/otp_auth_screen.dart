import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/button.dart';
import 'package:pick_my_plastic/edit_profile_screen.dart';
import 'package:pick_my_plastic/otp_verfication_widget.dart';
import 'package:pick_my_plastic/profile_screen.dart';

class OtpAuthScreen extends StatelessWidget {
  OtpAuthScreen({Key? key}) : super(key: key);

  final pinController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/otp.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              // height: MediaQuery.of(context).size.height,
            ),
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 30,
                    ),
                    Image.asset(
                      "assets/Keypad.png",
                    ),
                    const Text(
                      "OTP",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 200,
                    ),
                    const Center(
                      child: Text(
                        "Please enter the OTP received on your mobile number",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Color(0xce686666),
                          fontSize: 12,
                        ),
                      ),
                    ),
                    OtpVerificationWidget(
                      pinPutController: pinController,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Didn’t Receive?",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xce686666),
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    const Text(
                      "Resend OTP",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xff4b75e0),
                        fontSize: 18,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Button(
                      onPress: () {
                        Get.to(ProfileScreen());
                      },
                      text: "Continue",
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
