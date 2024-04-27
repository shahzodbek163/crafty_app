import 'package:crafty_app/src/presentation/view/screens/login_screen.dart';
import 'package:crafty_app/src/presentation/view/screens/register_screen.dart';
import 'package:crafty_app/src/presentation/view/widgets/buttons/main_s_button.dart';
import 'package:crafty_app/src/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class StarterScreen extends StatelessWidget {
  const StarterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            SizedBox(
              height: 348,
              width: double.infinity,
              child: Image.asset(
                "assets/images/drugs.png",
                fit: BoxFit.fitHeight,
              ),
            ),
            Column(
              children: [
                const Spacer(),
                Container(
                  height: MediaQuery.of(context).size.height - 300,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFE6FF),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    children: [
                      const SizedBox(
                        height: 50,
                      ),
                      Container(
                        width: 90,
                        height: 90,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          "assets/images/heart_icon.png",
                          scale: 3.1,
                        ),
                      ),
                      Text(
                        "Sizning shaxsiy hamshirangiz",
                        textAlign: TextAlign.center,
                        style: GoogleFonts.scada(
                          fontSize: 35,
                          fontWeight: FontWeight.w700,
                          color: purpleDark,
                        ),
                      ),
                      Text(
                        "Hech qachon bizni o'tkazib yubormang",
                        style: GoogleFonts.scada(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.56),
                        ),
                      ),
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const RegisterScreen(),
                                  ));
                            },
                            child: const MainSButton(
                              color: classicRose,
                              textColor: purpleDark,
                              text: "Ro'yhatdan o'tish",
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const LoginScreen(),
                                )),
                            child: const MainSButton(
                              color: persianPink,
                              textColor: Colors.white,
                              text: "Tizimga kirish",
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
