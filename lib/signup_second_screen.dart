import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/input_field.dart';
import 'package:pick_my_plastic/otp_auth_screen.dart';
import 'package:pick_my_plastic/shared.dart';
import 'package:pick_my_plastic/shared_row.dart';

class SignupSecondScreen extends StatelessWidget {
  SignupSecondScreen({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/signUp2.png",
              // width: MediaQuery.of(context).size.width,
              // fit: BoxFit.fill,
              // height: MediaQuery.of(context).size.height,
            ),
            AuthFlowBuilder<EmailFlowController>(
              builder: (context, state, controller, _) {
                Widget child = Container();
                if (state is AwaitingEmailAndPassword) {
                  child = Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 100),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  const Text(
                                    "Create\nAccount",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 36,
                                      fontFamily: "Open Sans",
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Image.asset(
                                      "assets/signUpLine.png",
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          //  const SizedBox(height: 50),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Mobile Number",
                          ),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Text(
                                "Gender",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                ),
                              ),
                              const SizedBox(width: 20),
                              buildGenderWidget(
                                  imagePath: "assets/female.png",
                                  gender: "Female"),
                              const SizedBox(width: 20),
                              buildGenderWidget(
                                  imagePath: "assets/male.png", gender: "Male"),
                              const SizedBox(width: 20),
                              buildGenderWidget(
                                  imagePath: "assets/other.png",
                                  gender: "Other"),
                            ],
                          ),
                          const SizedBox(height: 50),
                          const Text(
                            "Date of Birth",
                            style: TextStyle(
                              color: Color(0xff939393),
                              fontSize: 18,
                            ),
                          ),
                          const SizedBox(height: 100),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "CNIC",
                            color: const Color(0xff868789),
                          ),
                          const SizedBox(height: 50),
                          SharedRow(
                            text: "Next",
                            buttonText: "sing In",
                            color: const Color(0xff868789),
                            onPress: () {
                              Get.to(OtpAuthScreen());
                            },
                          ),
                        ],
                      ),
                    ),
                  );
                }
                return child;
              },
            ),
          ],
        ),
      ),
    );
  }
}
