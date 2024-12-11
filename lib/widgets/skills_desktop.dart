import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skill_items.dart';

class SkillsDesktop extends StatelessWidget {
  const SkillsDesktop({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        //platforms
        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for(int i=0; i<programLanguageItems.length; i++)
                Container(
                  width: 200,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    leading: Image.asset(programLanguageItems[i]["img"],
                      width: 40.0,
                      height: 40.0,
                    ),
                    title: Text(programLanguageItems[i]["title"]),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(width: 50),

        //skills
        Flexible (
          child: ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 500.0,
            ),
            child: Wrap(spacing: 10.0, runSpacing: 10.0, children: [
                for (int i=0; i<platformItems.length; i++)
                  Chip(
                    padding: const EdgeInsets.symmetric(vertical: 12.0,horizontal: 16.0,),
                    backgroundColor: CustomColor.bgLight2,
                    label: Text(platformItems[i]["title"]),
                    avatar: Image.asset(platformItems[i]["img"]),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(width: 50),

        ConstrainedBox(
          constraints: const BoxConstraints(
            maxWidth: 450,
          ),
          child: Wrap(
            spacing: 5.0,
            runSpacing: 5.0,
            children: [
              for(int i=0; i<skillItems.length; i++)
                Container(
                  width: 300,
                  decoration: BoxDecoration(
                    color: CustomColor.bgLight2,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: ListTile(
                    leading: Image.asset(skillItems[i]["img"],
                      width: 100,
                    ),
                    title: Text(skillItems[i]["title"],),
                  ),
                )
            ],
          ),
        ),
        const SizedBox(width: 50),
      ],
    )
    ;
  }
}
