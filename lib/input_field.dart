import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField(
      {Key? key, required this.textEditingController, required this.hint, this.color = Colors.white})
      : super(key: key);
  final TextEditingController textEditingController;
  final String hint;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            hint,
            style: TextStyle(
              color: color,
              fontSize: 18,
            ),
          ),
          TextFormField(
            // obscureText: isPassword,
            controller: textEditingController,
            //  validator: validator,
            textInputAction: TextInputAction.next,
            decoration:  InputDecoration(
              // hintText: hint,
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
              border: UnderlineInputBorder(
                borderSide: BorderSide(color: color),
              ),
            ),
          ),
        ],
      ),
    );
    // Column(
    //   children: [

    //     const SizedBox(height: 10),
    //     Container(
    //       height: 70,
    //       decoration: BoxDecoration(
    //         borderRadius: BorderRadius.circular(40),
    //         boxShadow: [
    //           BoxShadow(
    //             color: const Color(0xff5F9DE7).withOpacity(0.48),
    //             blurRadius: 11.07,
    //             spreadRadius: 2,
    //             offset: const Offset(2.77, 1.38),
    //           ),
    //           const BoxShadow(
    //             color: Color(0xffffffff),
    //             blurRadius: 11.07,
    //             spreadRadius: 3,
    //             offset: Offset(-2.77, -1.38),
    //           ),
    //         ],
    //        // color: AppColor.backgroundColor,
    //       ),
    //       child: Padding(
    //         padding: const EdgeInsets.all(8),
    //         child: TextFormField(
    //          // obscureText: isPassword,
    //           controller: textEditingController,
    //         //  validator: validator,
    //           textInputAction: TextInputAction.next,
    //           decoration: InputDecoration(
    //             hintText: "jb",
    //             enabledBorder: const UnderlineInputBorder(
    //               borderSide: BorderSide(color: Colors.transparent),
    //             ),
    //             focusedBorder: const UnderlineInputBorder(
    //               borderSide: BorderSide(color: Colors.transparent),
    //             ),
    //             border: const UnderlineInputBorder(
    //               borderSide: BorderSide(color: Colors.transparent),
    //             ),
    //           ),
    //         ),
    //       ),
    //     ),
    //   ],
    // );
  }
}
