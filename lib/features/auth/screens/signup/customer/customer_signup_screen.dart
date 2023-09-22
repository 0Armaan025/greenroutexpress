import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_route_x_press/common/widgets/custom_create_account_btn.dart';
import 'package:green_route_x_press/common/widgets/custom_text_field.dart';

class CustomerSignUpScreen extends StatefulWidget {
  const CustomerSignUpScreen({Key? key}) : super(key: key);

  @override
  State<CustomerSignUpScreen> createState() => _CustomerSignUpScreenState();
}

class _CustomerSignUpScreenState extends State<CustomerSignUpScreen> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  bool _acceptTerms = false;

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
                "Create a\nCustomer Account 😀",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _nameController,
              hintText: "Full Name",
            ),
            CustomTextField(
              controller: _emailController,
              hintText: "Email",
            ),
            CustomTextField(
              controller: _passwordController,
              hintText: "Password",
              isObscure: true,
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Checkbox(
                  value: _acceptTerms,
                  onChanged: (newValue) {
                    setState(() {
                      _acceptTerms = newValue ?? false;
                    });
                  },
                ),
                Text(
                  'I accept the terms and conditions',
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Center(
              child: Text(
                'By clicking "Create Account," you consent to our terms and conditions.',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            CustomCreateAccountButton(
              onPressed: () {
                if (_acceptTerms) {
                  // Handle customer registration here
                } else {
                  // Display a message to accept terms and conditions
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('Please accept the terms and conditions.'),
                    ),
                  );
                }
              },
              text: "Create Account",
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
