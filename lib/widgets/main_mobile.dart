import 'package:flutter/material.dart';
import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return Container(

      margin: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 30.0),
      height: screenHeight,
      constraints: const BoxConstraints(minHeight: 560.0,),

      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          //avatar img
          ShaderMask(
            shaderCallback: (bounds) {
              return LinearGradient(
                  colors: [
                    CustomColor.scaffoldBg.withOpacity(0.6),
                    CustomColor.scaffoldBg.withOpacity(0.6)]
              ).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/my_flutter_avatar.webp",
              width: screenWidth,
              height: screenHeight/2,),
          ),
          const SizedBox(height: 30.0,),

          //intro text
          const Text("Welcome to My Website,\nI'm Mohamed El Bachrioui,\nSoftware Engineer and\na Development enthusiast",
            textAlign: TextAlign.left,
            style: TextStyle(

              fontSize: 24.5,
              height: 1.7,
              fontWeight: FontWeight.bold,
              color: CustomColor.whitePrimary,
            ),
          ),
          const SizedBox(height: 16,),

          // Contact btn
          SizedBox(
            width:1618.033988749895,
            height: 50,
            child: ElevatedButton(
                onPressed: (){},
                child: const Text("Get in touch")),
          ),
          //btn
        ],
      ),
    );
  }
}
