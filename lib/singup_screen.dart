import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/input_field.dart';
import 'package:pick_my_plastic/otp_auth_screen.dart';
import 'package:pick_my_plastic/shared_row.dart';
import 'package:pick_my_plastic/signup_second_screen.dart';

class SignupScreen extends StatelessWidget {
  SignupScreen({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();
  final nameCtrl = TextEditingController();
  final confrmpasswordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/signUp.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
              height: MediaQuery.of(context).size.height,
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
                          const SizedBox(height: 150),
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
                          const SizedBox(height: 50),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Name",
                          ),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Email",
                          ),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Password",
                          ),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Confirm Password",
                          ),
                          const SizedBox(height: 50),
                           SharedRow(
                            text: "Next",
                            buttonText: "sing In",
                            onPress: () {
                              Get.to(SignupSecondScreen());
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
