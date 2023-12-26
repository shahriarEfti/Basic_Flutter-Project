import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_test/Screens/ticket_view.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:project_test/widgets/ticket_tabs.dart';

import '../utils/app_info_list.dart';

class TicketScreen extends StatelessWidget {
  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      body: Stack(
        children:[
        ListView(
          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(20),vertical: AppLayout.getHeight(20)),
          children: [
            Gap(AppLayout.getHeight(40)),
            Text('Tickets',style: Style.headlineStyle1.copyWith(fontSize: 35),),
            Gap(AppLayout.getHeight(20)),
           const AppTicketTabs(fristTab: "Upcoming", ScecondTab: "Previous"),
            Gap(AppLayout.getHeight(20)),
            Container(
              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),

              child: Column(
                children: [
                  TicketView(ticket: TicketList[0]),
                  TicketView(ticket: TicketList[0]),
                  TicketView(ticket: TicketList[0]),
                ],
              ),
            )
            
          ],
        ),

        ] ,
      ),
    );
  }
}
