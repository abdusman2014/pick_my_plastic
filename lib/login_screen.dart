import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutterfire_ui/auth.dart';
import 'package:get/get.dart';
import 'package:pick_my_plastic/signin_screen.dart';
import 'package:pick_my_plastic/singup_screen.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({Key? key}) : super(key: key);
  final emailCtrl = TextEditingController();
  final passwordCtrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[300],
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Expanded(child: Container()),
                  GestureDetector(
                    onTap: () {
                      Get.to(SigninScreen());
                    },
                    child: const Text(
                      "Sign In",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontFamily: "Open Sans",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Image.asset("assets/bike.png"),
              const Text(
                "Welcome to PickMyPlastic",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 36,
                  fontFamily: "Open Sans",
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(
                height: 50,
              ),
              //TODO:: Generate Clirnt id for facebook and update it
              const FacebookSignInButton(
                clientId:
                    '413970286730-1nlb163agrjq5dbv2giafs1e0fo6op04.apps.googleusercontent.com',
              ),
              const SizedBox(
                height: 30,
              ),
              const GoogleSignInButton(
                clientId:
                    '413970286730-1nlb163agrjq5dbv2giafs1e0fo6op04.apps.googleusercontent.com',
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(SignupScreen());
                },
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  padding: const EdgeInsets.all(16.0),
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(3),
                    border: Border.all(
                      color: Colors.white,
                      width: 2,
                    ),
                  ),
                  child: const Text(
                    "Create Account",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              Expanded(child: Container()),
              const Text(
                "By signing up, I agree to PickMyPlastic’s Terms of Service and Privacy Policy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );

    // return Scaffold(
    //   backgroundColor: Colors.blue[300],
    //   body: SafeArea(
    //     child: Column(
    //       children: [
    //         AuthFlowBuilder<EmailFlowController>(
    //           builder: (context, state, controller, _) {
    //             Widget child = Container();
    //             if (state is AwaitingEmailAndPassword) {
    //               child = Column(
    //                 children: [
    //                  //  GoogleProviderButtonStyle(),
    //                   ElevatedButton(
    //                     onPressed: () {
    //                       controller.setEmailAndPassword(
    //                         emailCtrl.text,
    //                         passwordCtrl.text,
    //                       );
    //                     },
    //                     child: const Text('Sign in'),
    //                   ),
    //                 ],
    //               );
    //             }
    //             return child;
    //           },
    //         ),

    //       ],
    //     ),
    //   ),
    //   // StreamBuilder<User?>(
    //   //   stream: FirebaseAuth.instance.authStateChanges(),
    //   //   builder: (context, snapshot) {
    //   //     // ...
    //   //     if (!snapshot.hasData) {
    //   //       return SignInScreen(
    //   //           headerBuilder: (context, constraints, _) {
    //   //             return Padding(
    //   //               padding: const EdgeInsets.all(20),
    //   //               child: Text(
    //   //                 "kgkjg",
    //   //                 style: TextStyle(
    //   //                   color: Colors.white,
    //   //                   fontSize: 18,
    //   //                   fontFamily: "Open Sans",
    //   //                   fontWeight: FontWeight.w600,
    //   //                 ),
    //   //               ),
    //   //             );
    //   //             //  Row(
    //   //             //   children: [
    //   //             //       Expanded(child: Container()),
    //   //             //     Text(
    //   //             //       "fjafkjsfjkabfkjasbfSign In",
    //   //             //       style: TextStyle(
    //   //             //         color: Colors.white,
    //   //             //         fontSize: 18,
    //   //             //         fontFamily: "Open Sans",
    //   //             //         fontWeight: FontWeight.w600,
    //   //             //       ),
    //   //             //     ),
    //   //             //   ],
    //   //             // );
    //   //           },
    //   //           footerBuilder: (context, _) {
    //   //             return const Padding(
    //   //               padding: EdgeInsets.only(top: 16),
    //   //               child: Text(
    //   //                 'By signing up, I agree to PickMyPlastic’s Terms of Service and Privacy Policy',
    //   //                 style: TextStyle(color: Colors.grey),
    //   //               ),
    //   //             );
    //   //           },
    //   //           providerConfigs: const [
    //   //             GoogleProviderConfiguration(
    //   //               clientId:
    //   //                   '413970286730-1nlb163agrjq5dbv2giafs1e0fo6op04.apps.googleusercontent.com',
    //   //             ),
    //   //           ]);
    //   //     }
    //   //     return const Scaffold(
    //   //       backgroundColor: Color(0x00749AFC),
    //   //       body: SignInScreen(
    //   //         providerConfigs: [
    //   //           GoogleProviderConfiguration(
    //   //             clientId:
    //   //                 '413970286730-1nlb163agrjq5dbv2giafs1e0fo6op04.apps.googleusercontent.com',
    //   //           ),
    //   //         ],
    //   //       ),
    //   //     );
    //   //   },
    //   // ),
    // );
    // // const Scaffold(
    // //   backgroundColor: Color(0x00749AFC),
    // //   body: SignInScreen(
    // //     providerConfigs: [],
    // //   ),
    // // );
  }
}
