import 'package:flutter/material.dart';
import 'package:pinput/pin_put/pin_put.dart';

class OtpVerificationWidget extends StatelessWidget {
  OtpVerificationWidget({Key? key, required this.pinPutController})
      : super(key: key);

  final TextEditingController pinPutController;
  final FocusNode _pinPutFocusNode = FocusNode();

  BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      borderRadius: BorderRadius.circular(4),
      color: const Color(0x93c4c4c4),
    );
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Builder(
      builder: (context) {
        return Container(
          margin: const EdgeInsets.all(20.0),
          padding: const EdgeInsets.all(10.0),
          child: PinPut(
            eachFieldHeight: 50,
            eachFieldWidth: 50,
            // eachFieldWidth: (width - 120) / 4,
            fieldsCount: 4,
            focusNode: _pinPutFocusNode,

            controller: pinPutController,
            submittedFieldDecoration: _pinPutDecoration,
            selectedFieldDecoration: _pinPutDecoration,
            followingFieldDecoration: _pinPutDecoration,

            // validator: MultiValidator(
            //   [
            //     RequiredValidator(errorText: "Username is required"),
            //   ],
            // ),
          ),
        );
      },
    );
  }
}
