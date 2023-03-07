import 'package:Quran.me/view/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../constant.dart';
import 'login.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: primaryColor,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 180),
              child: Lottie.asset(
                "assets/animasi.json",
                width: 300,
                height: 300,
              ),
            ),
            Center(
              child: Text(
                "Qur'an.me",
                style: GoogleFonts.mukta(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                  ),
                ),
              ),
            ),
            Text(
              "Baca Al-Qur'an kapan saja dan dimana saja",
              style: GoogleFonts.mukta(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                  fontSize: 14,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 190),
              child: SizedBox(
                height: 50,
                width: 300,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(60),
                    ),
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HomeScreen();
                    }));
                  },
                  child: Text("Next",
                      style: GoogleFonts.mukta(
                          textStyle: TextStyle(
                        color: primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                      ))),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
