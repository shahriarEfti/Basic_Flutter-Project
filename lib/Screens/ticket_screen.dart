import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_test/Screens/ticket_view.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:project_test/widgets/column_layout.dart';
import 'package:project_test/widgets/ticket_tabs.dart';

import '../utils/app_info_list.dart';
import '../widgets/layout_builder_widgets.dart';
import 'package:barcode_widget/barcode_widget.dart';

class TicketScreen extends StatelessWidget {

  const TicketScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Scaffold(
      backgroundColor: Style.bgColor,
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
              child: TicketView(ticket: TicketList[0],isColor: true,),
            ),
           SizedBox(height: 1,),
            Container(
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 15,vertical: 20),
              margin: EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                 AppColumnLayout(firstText: 'Flutter App',
                   secondText: 'Passengers',
                 alignment: CrossAxisAlignment.start, isColor: false,),


                    AppColumnLayout(firstText: '5221 3654789',
                      secondText: 'Passport',
                    alignment: CrossAxisAlignment.end, isColor: false,),
                                ],
                     ),
                Gap(AppLayout.getHeight(20)),
            const AppLayoutBuilder( sections: 15, isColor: false,Width: 5,),
                Gap(AppLayout.getHeight(20)),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    AppColumnLayout(firstText: '0055444 787747',
                      secondText: 'Number of E-Ticket',
                      alignment: CrossAxisAlignment.start, isColor: false,),


                    AppColumnLayout(firstText: 'B2SG4652B',
                      secondText: 'Booking Code',
                      alignment: CrossAxisAlignment.end, isColor: false,),
                  ],
                ),
                Gap(AppLayout.getHeight(20)),
             const AppLayoutBuilder( sections: 15, isColor: false,Width: 5,),
                Gap(AppLayout.getHeight(20)),
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                 Column(
                   children: [
                     Row(
                       children: [
                         Image.asset("assets/images/visa.jpg",scale: 11,),
                         Text("*** 2462",style: Style.headlineStyle3,),
                       ],
                     ),
                     Gap(5),
                     Text("Payment Method",style: Style.headlineStyle4,),
                   ],
                 ),
                 const AppColumnLayout(firstText: '\$249.99',
                   secondText: 'Price',
                   alignment: CrossAxisAlignment.start, isColor: false,),


               ],
             ),
                SizedBox(height: 1,),
                Gap(AppLayout.getHeight(20)),

                  ],
                ),
                  ),

            /*
            bar code
            */
            SizedBox(height: 1,),
            Container(

              decoration:  BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(AppLayout.getHeight(21)),
                  bottomLeft:  Radius.circular(AppLayout.getHeight(21)),
                )
              ),
              margin: EdgeInsets.only(left: AppLayout.getHeight(15),
                  right: AppLayout.getHeight(15)),
              padding: EdgeInsets.only(top: AppLayout.getHeight(20),
                  bottom: AppLayout.getHeight(20)),
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15)),
                child: ClipRRect(
                  borderRadius:BorderRadius.circular(AppLayout.getHeight(15)),
                  child: BarcodeWidget(barcode: Barcode.code128(), data: 'https://github.com/shahriarEfti',
                    drawText: false,
                    color: Style.textColor,
                    width:  double.infinity,
                    height: 70,
                  ),
                ),
              ),
            ),
            Gap(AppLayout.getHeight(20)),
            Container(

              padding: EdgeInsets.only(left: AppLayout.getHeight(15)),
              child: TicketView(ticket: TicketList[0],),
            ),

          ],
        ),
        ]),

    );
  }
}
