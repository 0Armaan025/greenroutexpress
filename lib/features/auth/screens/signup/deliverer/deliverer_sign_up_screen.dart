import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_route_x_press/common/widgets/custom_create_account_btn.dart';
import 'package:green_route_x_press/common/widgets/custom_text_field.dart';

class DelivererSignUpScreen extends StatefulWidget {
  const DelivererSignUpScreen({super.key});

  @override
  State<DelivererSignUpScreen> createState() => _DelivererSignUpScreenState();
}

class _DelivererSignUpScreenState extends State<DelivererSignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          height: size.height * 0.98,
          width: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey.shade200, Colors.grey.shade300]),
          ),
          child: Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 50.0),
                child: Text(
                  "Create an\nAccount 😀",
                  style: GoogleFonts.poppins(
                      color: Colors.black,
                      fontSize: 46,
                      fontWeight: FontWeight.w400),
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: Text(
                  "[As deliverer]",
                  style: GoogleFonts.lato(
                    color: Colors.purple,
                    fontSize: 28,
                  ),
                ),
              ),
              SizedBox(height: 20),
              CustomTextField(
                  controller: _nameController, hintText: "Enter your name"),
              CustomTextField(
                  controller: _emailController, hintText: "Enter your email"),
              CustomTextField(
                  controller: _passController,
                  hintText: "Enter your password",
                  isObscure: true),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Change account type',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Sign In (as deliverer)',
                    style: GoogleFonts.poppins(
                      color: Colors.blue,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              CustomCreateAccountButton(
                onPressed: () {},
                text: "Create an account!",
              ),
            ],
          ),
        ),
      ),
    );
  }
}
