import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../utils/app_layout.dart';

class AppTicketTabs extends StatelessWidget {
  final String fristTab;
  final String ScecondTab;
  const AppTicketTabs({Key? key,required this.fristTab,required this.ScecondTab});

  @override
  Widget build(BuildContext context) {
    final size=AppLayout.getSize(context);

    return FittedBox(
      child:Container(
        padding: EdgeInsets.all(3.5),
        child: Row(
          children: [

            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.horizontal( left: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.white,
                ),
                child: Center(child: Text("Airlines"),)
            ),
            Gap(20),
            Container(
                width: size.width * 0.44,
                padding: EdgeInsets.symmetric(vertical: AppLayout.getHeight(7)),
                decoration:BoxDecoration(
                  borderRadius: BorderRadius.horizontal( right: Radius.circular(AppLayout.getHeight(50)),),
                  color:  Colors.transparent,
                ),
                child: Center(child: Text("Hotels"),)
            ),



          ],


        ),
        decoration:BoxDecoration(
          borderRadius: BorderRadius.circular( AppLayout.getHeight(50),),
          color: const Color(0xFFF4F6FD),
        ),


      ) ,
    );
  }
}
