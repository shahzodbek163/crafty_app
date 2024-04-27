import 'package:crafty_app/src/utils.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';

class MainTextField extends StatefulWidget {
  final String title;
  final String hinText;
  final bool isPass;
  const MainTextField(
      {super.key, this.title = "", required this.hinText, this.isPass = false});

  @override
  State<MainTextField> createState() => _MainTextFieldState();
}

class _MainTextFieldState extends State<MainTextField> {
  bool passwordVisible = false;

  @override
  void initState() {
    passwordVisible = widget.isPass;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        widget.title != ""
            ? Text(
                widget.title,
                style: GoogleFonts.scada(
                  fontWeight: FontWeight.w500,
                  fontSize: 17,
                  color: purpleDark,
                ),
              )
            : const SizedBox(),
        Container(
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.symmetric(horizontal: 15),
          height: 50,
          width: double.infinity,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: peach,
            boxShadow: [
              BoxShadow(
                blurRadius: 4,
                color: Colors.black.withOpacity(0.25),
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: TextField(
            obscureText: passwordVisible,
            onTapOutside: (event) {},
            decoration: InputDecoration(
              suffixIcon: widget.isPass
                  ? IconButton(
                      icon: Icon(passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () {
                        setState(
                          () {
                            passwordVisible = !passwordVisible;
                          },
                        );
                      },
                    )
                  : null,
              hintText: widget.hinText,
              border: const UnderlineInputBorder(borderSide: BorderSide.none),
            ),
          ),
        ),
      ],
    );
  }
}
