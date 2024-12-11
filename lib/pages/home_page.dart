import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_mobile.dart';
import 'package:portfolio/widgets/skills_desktop.dart';

import '../widgets/header_desktop.dart';
import '../widgets/main_desktop.dart';
import '../widgets/main_mobile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override

  Widget build(BuildContext context) {

    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;

    return LayoutBuilder(
      builder: (context, constraints) {

        return Scaffold(

          key:scaffoldKey,
          backgroundColor: CustomColor.scaffoldBg,
          endDrawer: constraints.maxWidth>=kMinDesktopWidth?null : const DrawerMobile(),

          body: ListView(
            scrollDirection: Axis.vertical,
            children:[

              //Main
              if(constraints.maxWidth>=kMinDesktopWidth)
                const HeaderDesktop() else
              HeaderMobile(
                onMenuTap: (){
                  scaffoldKey.currentState?.openEndDrawer();
                },
                onLogoTap: (){},
              ),

              if(constraints.maxWidth>=kMinDesktopWidth)
                const MainDesktop()
                else
                  const MainMobile(),

              //Skills
              Container (
                color: CustomColor.bgLight1,
                width: double.maxFinite,
                padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
                child: const Column(mainAxisSize: MainAxisSize.min , children: [
                    //title
                    Text("what I can do", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: CustomColor.whitePrimary,),),
                    SizedBox(height: 50),
                    //platforms and skills
                    SkillsDesktop(),
                  ],
                ),
              ),

              //Projects
              Container (
                height: 500,
                width: double.maxFinite,
              ),

              //Contact
              Container (
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
              ),

              //Footer
              Container (
                height: 500,
                width: double.maxFinite,
              )

            ]
          ),
        );
      }
    );
  }
}
