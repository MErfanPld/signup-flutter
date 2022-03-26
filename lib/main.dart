import 'dart:io';
import 'package:device_preview/device_preview.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(DevicePreview(
    builder: (context) => RootWidget(),
    enabled: true,
  ));
}

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(body: MyLogin()),
    );
  }
}

class MyLogin extends StatelessWidget {
  const MyLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.only(left: 30, top: 25),
          child: const Text(
            "Sign up",
            style: TextStyle(
                color: Color(0xFF456173),
                fontSize: 28,
                fontWeight: FontWeight.w600),
          ),
        ),
        //* End of sign up container

        //* Username
        MyInput("Username"),
        MyInput("Password"),
        MyInput("Confirm Password"),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 27, vertical: 10),
          child: MyButton(),
        ),
        const Text("OR",
            style: TextStyle(
                fontSize: 19,
                fontWeight: FontWeight.w600,
                color: Color(0xFF675777))),

        const SizedBox(
          height: 20,
        ),

        const Text("sign up using",
            style: TextStyle(
                fontSize: 19, color: Color.fromARGB(255, 132, 117, 146))),

        const SizedBox(
          height: 20,
        ),

        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'img/google-icon.png',
              height: 40,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              width: 7.0,
            ),
            Image.asset(
              'img/facebook.png',
              height: 40,
              fit: BoxFit.fill,
            ),
          ],
        )
      ],
    );
  }
}

// ? Input Class Widget
class MyInput extends StatelessWidget {
  final String hint;
  MyInput(this.hint);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
      child: Theme(
          data: Theme.of(context).copyWith(splashColor: Colors.transparent),
          child: Directionality(
            textDirection: TextDirection.ltr,
            child: TextFormField(
              controller: null,
              autofocus: false,
              style: const TextStyle(fontSize: 22, color: Color(0xFF456173)),
              // if (hintText=="Password" || hintText=="Confirm Password") {
              //   obscureText: true,
              // }
              decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  hintText: hint,
                  hintStyle:
                      const TextStyle(color: Color(0xFF456173), fontSize: 22),
                  contentPadding:
                      const EdgeInsets.only(left: 18, top: 8, bottom: 8),
                  focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Colors.white),
                      borderRadius: BorderRadius.circular(27)),
                  enabledBorder: UnderlineInputBorder(
                    borderRadius: BorderRadius.circular(27),
                    borderSide: const BorderSide(color: Colors.white),
                  )),
            ),
          )),
    );
  }
}

// ? Button Class Widget

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Color(0xFFf67280),
      borderRadius: BorderRadius.circular(30),
      shadowColor: Colors.redAccent,
      elevation: 3,
      child: MaterialButton(
        onPressed: () {},
        elevation: 3,
        minWidth: 350,
        height: 45,
        child: const Text("Sign up",
            style: TextStyle(color: Colors.white, fontSize: 20)),
      ),
    );
  }
}
