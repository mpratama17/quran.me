import 'package:Quran.me/widgets/button.dart';
import 'package:Quran.me/widgets/custTfPassword.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:lottie/lottie.dart';

import '../constant.dart';
import '../widgets/custTfusername.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: secondaryColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Center(
            child: Column(
              children: [
                //create Text header Quran.me
                Container(
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: Text(
                          "Quran.me",
                          style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: primaryColor,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Lottie.asset(
                        "assets/animasi-login.json",
                        width: 400,
                        height: 400,
                      ),
                    ],
                  ),
                ),
                iniTfUser(),
                SizedBox(
                  height: 16,
                ),
                iniTfPw(),
                SizedBox(
                  height: 16,
                ),
                iniButton()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
