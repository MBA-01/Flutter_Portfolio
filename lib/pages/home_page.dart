import 'package:flutter/material.dart';
import 'package:portfolio/constants/colors.dart';
import 'package:portfolio/constants/size.dart';
import 'package:portfolio/widgets/drawer_mobile.dart';
import 'package:portfolio/widgets/header_mobile.dart';

import '../widgets/header_desktop.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
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


              //Skills
              Container (
                height: 500,
                width: double.maxFinite,
                color: Colors.blueGrey,
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
