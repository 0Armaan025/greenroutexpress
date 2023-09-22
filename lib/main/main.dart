import 'package:flutter/material.dart';
import 'package:green_route_x_press/features/auth/screens/account_choosing/screens/account_choosing_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/business/business_login_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/business/business_signup_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/customer/customer_login_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/customer/customer_signup_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/deliverer/deliverer_login_screen.dart';
import 'package:green_route_x_press/features/auth/screens/signup/deliverer/deliverer_sign_up_screen.dart';

import '../features/onboarding/screens/onboarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
      home: CustomerSignUpScreen(),
    );
  }
}
