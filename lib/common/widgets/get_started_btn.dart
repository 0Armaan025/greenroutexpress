import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedBtn extends StatefulWidget {
  const GetStartedBtn({super.key});

  @override
  State<GetStartedBtn> createState() => _GetStartedBtnState();
}

class _GetStartedBtnState extends State<GetStartedBtn> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Container(
      height: size.height * 0.06,
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 40),
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: Colors.deepPurple,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text(
        "Get Started",
        style: GoogleFonts.roboto(
          color: Colors.white,
          fontSize: 16,
        ),
      ),
    );
  }
}
