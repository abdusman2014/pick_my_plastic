import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/button.dart';
import 'package:pick_my_plastic/edit_profile_screen.dart';
import 'package:pick_my_plastic/shared.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/profile.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
            ),
            Positioned(
              top: 10,
              left: 10,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 10,
              right: 10,
              child: GestureDetector(
                  onTap: () {
                    Get.to(EditProfileScreen());
                  },
                  child: Image.asset("assets/edit.png")),
            ),
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: Column(
                children: [
                  Image.asset("assets/fake_profile.png"),
                  const Text(
                    "Mesha Farrukh",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontFamily: "Open Sans",
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  const Text(
                    "view impact",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(height: 150),
                  buildInfoWidget("assets/email.png", "abc_123@gmail.com"),
                  buildInfoWidget("assets/phone.png", "+92 325 482933"),
                  const SizedBox(height: 10),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Date of Birth",
                      style: TextStyle(
                        color: Color(0xff4b75e0),
                        fontSize: 24,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffd9d7d7),
                            width: 1.25,
                          ),
                        ),
                        child: const Text(
                          "08",
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffd9d7d7),
                            width: 1.25,
                          ),
                        ),
                        child: const Text(
                          "12",
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 18,
                          ),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        padding: const EdgeInsets.all(8),
                        decoration: BoxDecoration(
                          border: Border.all(
                            color: const Color(0xffd9d7d7),
                            width: 1.25,
                          ),
                        ),
                        child: const Text(
                          "1997",
                          style: TextStyle(
                            color: Color(0xff939393),
                            fontSize: 18,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "CNIC ",
                      style: TextStyle(
                        color: Color(0xff4b75e0),
                        fontSize: 18,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "42000 - 382792 - 3",
                      style: TextStyle(
                        color: Color(0xbf939393),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Address",
                      style: TextStyle(
                        color: Color(0xff4b75e0),
                        fontSize: 24,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "House# 46 St. 11, F-11/2\nIslamabad, Pakistan",
                      style: TextStyle(
                        color: Color(0xff868789),
                        fontSize: 20,
                      ),
                    ),
                  ),
                  Expanded(child: Container()),
                  SizedBox(
                    width: MediaQuery.of(context).size.width,
                    child: Button(onPress: () {}, text: "Save"),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildInfoWidget(String imagePath, String info) {
    return Row(
      children: [
        Image.asset(imagePath),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            info,
            style: const TextStyle(
              color: Color(0xff939393),
              fontSize: 20,
              decoration: TextDecoration.underline,
            ),
          ),
        ),
      ],
    );
  }
}
