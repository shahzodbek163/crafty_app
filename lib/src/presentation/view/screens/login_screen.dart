import 'package:crafty_app/src/presentation/view/screens/register_screen.dart';
import 'package:crafty_app/src/presentation/view/widgets/buttons/main_button.dart';
import 'package:crafty_app/src/presentation/view/widgets/textfields/main_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double screenSize = MediaQuery.of(context).size.height;
    double height = screenSize - kToolbarHeight;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            height: height,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  "assets/images/background_gradient.png",
                ),
                fit: BoxFit.fill,
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 10,
                ),
                InkWell(
                  onTap: () => Navigator.pop(context),
                  child: Container(
                    margin: const EdgeInsets.all(23),
                    width: 25,
                    height: 25,
                    child: Image.asset("assets/images/arrow-left.png"),
                  ),
                ),
                Center(
                  child: Container(
                    width: 105,
                    height: 105,
                    decoration: const BoxDecoration(
                      shape: BoxShape.circle,
                      color: Color(0xFFFFE6FF),
                    ),
                    child: Image.asset(
                      "assets/images/drug_single.png",
                      scale: 4,
                    ),
                  ),
                ),
                const Spacer(),
                Container(
                  padding: const EdgeInsets.only(
                      bottom: 44, top: 66, right: 38, left: 38),
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    color: Color(0xFFFFE6FF),
                    borderRadius: BorderRadius.vertical(
                      top: Radius.circular(40),
                    ),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Keling, tizimga kiring",
                        style: GoogleFonts.scada(
                          fontSize: 34,
                          fontWeight: FontWeight.w700,
                          color: const Color(0xFF35134F),
                        ),
                      ),
                      Text(
                        "Xush kelibsiz, sog'indingiz!",
                        style: GoogleFonts.scada(
                          fontSize: 16,
                          fontWeight: FontWeight.w400,
                          color: Colors.black.withOpacity(0.56),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const MainTextField(
                        title: "Username",
                        hinText: "example@gmail.com",
                      ),
                      const SizedBox(height: 10),
                      const MainTextField(
                        title: "Parol",
                        hinText: "*********",
                        isPass: true,
                      ),
                      const SizedBox(
                        height: 7,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            "Parolni unutdingizmi?",
                            style: GoogleFonts.scada(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.56),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 35,
                      ),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 18),
                        child: MainButton(
                          text: "Tizimga kirish",
                        ),
                      ),
                      const SizedBox(
                        height: 6,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "Hisobingiz yo'qmi? ",
                            style: GoogleFonts.scada(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Colors.black.withOpacity(0.56),
                            ),
                          ),
                          InkWell(
                            onTap: () => Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => const RegisterScreen(),
                              ),
                            ),
                            child: Text(
                              "Ro'yhatdan o'tish",
                              style: GoogleFonts.scada(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF686EFB),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
