import 'package:flutter/material.dart';

import 'package:google_fonts/google_fonts.dart';
import 'package:green_route_x_press/common/widgets/get_started_btn.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => OnBoardingScreenState();
}

class OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(
                height: 48,
              ),
              Image(
                image: NetworkImage(
                    'https://img.freepik.com/free-vector/warehouse-worker-transporting-goods-freight-shipping-types-business-logistics-smart-logistics-technologies-commercial-delivery-service-concept-pinkish-coral-bluevector-isolated-illustration_335657-1728.jpg?w=826&t=st=1695396516~exp=1695397116~hmac=953a3a91facf156ab623d6eca8be906e5dba3b1d998428dc40e55c3789aa0ae4'),
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 50,
              ),
              Container(
                alignment: Alignment.centerLeft,
                margin: const EdgeInsets.only(left: 40),
                child: Text(
                  "Embark on an Eco-Friendly\nShopping Journey!",
                  style: GoogleFonts.poppins(
                    color: Colors.black,
                    fontSize: 24,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              SizedBox(height: 40),
              GetStartedBtn(),
            ],
          ),
        ),
      ),
    );
  }
}
