import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/button.dart';
import 'package:pick_my_plastic/input_field.dart';

import 'shared.dart';

class EditProfileScreen extends StatelessWidget {
  EditProfileScreen({Key? key}) : super(key: key);

  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/profileUpdate.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              // height: MediaQuery.of(context).size.height,
            ),
            GestureDetector(
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
            Padding(
              padding: const EdgeInsets.all(32.0),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 100),
                    Row(
                      children: [
                        Expanded(child: Container()),
                        const Text(
                          "Update\nProfile",
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            color: Color(0xff4b75e0),
                            fontSize: 24,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                    //  const SizedBox(height: 50),
                    InputField(
                      textEditingController: emailCtrl,
                      hint: "Name",
                      color: const Color(0xff4b75e0),
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      textEditingController: emailCtrl,
                      hint: "Email",
                      color: const Color(0xff4b75e0),
                    ),
                    const SizedBox(height: 20),
                    InputField(
                      textEditingController: emailCtrl,
                      hint: "Phone Number",
                      color: const Color(0xff4b75e0),
                    ),
                    const SizedBox(height: 20),

                    //const SizedBox(height: 50),
                    const Text(
                      "Date of Birth",
                      style: TextStyle(
                        color: Color(0xff4b75e0),
                        fontSize: 18,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 100),
                    InputField(
                      textEditingController: emailCtrl,
                      hint: "CNIC",
                      color: const Color(0xff4b75e0),
                    ),
                    Row(
                      children: [
                        const Text(
                          "Gender",
                          style: TextStyle(
                            color: Color(0xff4b75e0),
                            fontSize: 18,
                            fontFamily: "Open Sans",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 20),
                        buildGenderWidget(
                            imagePath: "assets/female.png",
                            gender: "Female",
                            color: const Color(0xff4b75e0)),
                        const SizedBox(width: 20),
                        buildGenderWidget(
                            imagePath: "assets/male.png",
                            gender: "Male",
                            color: const Color(0xff4b75e0)),
                        const SizedBox(width: 20),
                        buildGenderWidget(
                            imagePath: "assets/other.png",
                            gender: "Other",
                            color: const Color(0xff4b75e0)),
                      ],
                    ),
                    const SizedBox(height: 10),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: Button(
                        onPress: () {
                          Get.back();
                        },
                        text: "Save",
                      ),
                    ),
                    //  const SizedBox(height: 50),
                    // SharedRow(
                    //   text: "Next",
                    //   buttonText: "sing In",
                    //   color: const Color(0xff868789),
                    //   onPress: () {
                    //     Get.to(OtpAuthScreen());
                    //   },
                    // ),
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
