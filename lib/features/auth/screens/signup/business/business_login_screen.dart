import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_route_x_press/common/widgets/custom_create_account_btn.dart';
import 'package:green_route_x_press/common/widgets/custom_text_field.dart';

class BusinessLoginScreen extends StatefulWidget {
  const BusinessLoginScreen({Key? key}) : super(key: key);

  @override
  State<BusinessLoginScreen> createState() => _BusinessLoginScreenState();
}

class _BusinessLoginScreenState extends State<BusinessLoginScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 60,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 20),
              child: Text(
                "Business Login !",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _emailController,
              hintText: "Business Email",
            ),
            CustomTextField(
              controller: _passwordController,
              hintText: "Password",
              isObscure: true,
            ),
            SizedBox(height: 20),
            CustomCreateAccountButton(
              onPressed: () {
                // Handle login button press
                // Validate business credentials and perform login
              },
              text: "Log In",
            ),
            const SizedBox(
              height: 20,
            ),
            TextButton(
              onPressed: () {
                // Navigate to the forgot password screen
              },
              child: Text(
                'Forgot Password?',
                style: GoogleFonts.poppins(
                  color: Colors.blue,
                  fontSize: 14,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have a business account?",
                  style: GoogleFonts.poppins(
                    fontSize: 14,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    // Navigate to the business sign-up screen
                  },
                  child: Text(
                    'Sign Up',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
