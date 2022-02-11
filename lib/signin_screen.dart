import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/input_field.dart';
import 'package:pick_my_plastic/shared_row.dart';
import 'package:pick_my_plastic/singup_screen.dart';

class SigninScreen extends StatelessWidget {
  SigninScreen({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          children: [
            Image.asset(
              "assets/signIn.png",
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.fill,
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
                          const Text(
                            "Welcome \nBack",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 36,
                              fontFamily: "Open Sans",
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(height: 150),
                          Row(
                            children: [
                              Expanded(child: Container()),
                              GestureDetector(
                                onTap: () {
                                  Get.to(SignupScreen());
                                },
                                child: const Text(
                                  "Sign Up",
                                  style: TextStyle(
                                    color: Color(0xff686666),
                                    fontSize: 18,
                                    decoration: TextDecoration.underline,
                                    fontFamily: "Open Sans",
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 50),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Email/Mobile Number",
                            color: const Color(0xff868789),
                          ),
                          InputField(
                            textEditingController: emailCtrl,
                            hint: "Password",
                            color: const Color(0xff868789),
                          ),
                          const SizedBox(height: 50),
                          SharedRow(
                            text: "Sign In",
                            buttonText: "Forgot Password?",
                            color: const Color(0xff868789),
                            onPress: () {},
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
