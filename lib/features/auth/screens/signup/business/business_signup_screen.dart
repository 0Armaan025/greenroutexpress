import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_route_x_press/common/widgets/custom_create_account_btn.dart';
import 'package:green_route_x_press/common/widgets/custom_text_field.dart';

class BusinessSignUpScreen extends StatefulWidget {
  const BusinessSignUpScreen({Key? key}) : super(key: key);

  @override
  State<BusinessSignUpScreen> createState() => _BusinessSignUpScreenState();
}

class _BusinessSignUpScreenState extends State<BusinessSignUpScreen> {
  final TextEditingController _businessNameController = TextEditingController();
  final TextEditingController _businessAddressController =
      TextEditingController();
  final TextEditingController _businessPhoneController =
      TextEditingController();
  final TextEditingController _verificationLetterController =
      TextEditingController();
  bool _acceptTerms = false;
  bool _isVerifying = false;

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
                "Create a Business\nAccount 😀",
                style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 36,
                    fontWeight: FontWeight.w400),
              ),
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _businessNameController,
              hintText: "Business Name",
            ),
            CustomTextField(
              controller: _businessAddressController,
              hintText: "Business Address",
            ),
            CustomTextField(
              controller: _businessPhoneController,
              hintText: "Business Phone Number",
            ),
            SizedBox(height: 20),
            CustomTextField(
              controller: _verificationLetterController,
              hintText: "Verification Consent Letter",
              // Adjust the number of lines as needed
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
                'By clicking "Register Your Business," you consent to our terms and conditions and acknowledge that your registration will be manually verified by our team.',
                style: GoogleFonts.poppins(
                  color: Colors.grey,
                  fontSize: 12,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            _isVerifying
                ? CircularProgressIndicator() // Show a loading indicator while verifying
                : CustomCreateAccountButton(
                    onPressed: () {
                      if (_acceptTerms) {
                        setState(() {
                          _isVerifying = true;
                        });
                        // Simulate a delay to show the verification process
                        Future.delayed(Duration(seconds: 3), () {
                          setState(() {
                            _isVerifying = false;
                          });
                          // Show a message that registration will be verified manually
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(
                              content: Text(
                                  'Your account will be verified by our team.'),
                            ),
                          );
                          // Perform business registration here
                        });
                      } else {
                        // Display a message to accept terms and conditions
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content:
                                Text('Please accept the terms and conditions.'),
                          ),
                        );
                      }
                    },
                    text: "Register it!",
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
