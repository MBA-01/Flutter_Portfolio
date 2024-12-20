
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainDesktop extends StatelessWidget {
  const MainDesktop({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;


    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20.0,),
      height: screenHeight/1.2,

      constraints: const BoxConstraints(
        minHeight: 350.0,
      ),

      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [

              const Text("Welcome to My Website,\nI'm Mohamed El Bachrioui,\nSoftware Engineer and\na Development enthusiast",
                style: TextStyle(
                  fontSize: 27.5,
                  height: 1.55,
                  fontWeight: FontWeight.bold,
                  color: CustomColor.whitePrimary,
                ),
              ),

              const SizedBox(height: 15,),
              SizedBox(
                width:300,
                child: ElevatedButton(
                    onPressed: (){},
                    child: const Text("Get in touch")),
              ),
            ],
          ),
          Image.asset(
            "assets/my_flutter_avatar.webp",
            width: screenWidth/2.5,
          )

        ],),
    );
  }
}
