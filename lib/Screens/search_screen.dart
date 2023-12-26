import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:project_test/widgets/double_text_widget.dart';
import 'package:project_test/widgets/ticket_tabs.dart';

import '../widgets/icon_text_widgets.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    final size =AppLayout.getSize(context);
    return Scaffold(

      backgroundColor: Style.bgColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getWidth(20),vertical: AppLayout.getHeight(20)),

        children: [
          Gap(AppLayout.getHeight(40)),

          Text('What are\nyou looking for?',style: Style.headlineStyle1.copyWith(fontSize:AppLayout.getWidth(35)),),
          Gap(AppLayout.getHeight(20)),
          AppTicketTabs(fristTab: "Airlines", ScecondTab: "Hotels"),
          Gap(AppLayout.getHeight(25)),
        const  AppIconText(icon:Icons.flight_takeoff_rounded,text:"Departure"),
          Gap(AppLayout.getHeight(18)),
          const  AppIconText(icon:Icons.flight_land_rounded,text:"Arrival"),

          Gap(AppLayout.getHeight(30)),


          Container(
          padding: EdgeInsets.symmetric(vertical:AppLayout.getWidth(15),horizontal: AppLayout.getWidth(15)),

          decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppLayout.getWidth(10)),
          color: Colors.deepOrange
          ),
          child:Center(
          child:
          Text( "Find Ticket", style: Style.textStyle.copyWith(color: Colors.white, ),
    ),
          ),
          ),
          Gap(AppLayout.getHeight(40)),

           AppDoubleTextWidget(bigText: "Upcoming's", smallText: "View All"),
          Gap(AppLayout.getHeight(40)),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                height: AppLayout.getHeight(425),
                width: size.width* 0.42,
                padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getWidth(12)),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(AppLayout.getHeight(20)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,

                      blurRadius: 1,
                      spreadRadius: 1,
                    )
                  ]
                ),
                child: Column(
                  children: [
                    Container(
                      height: AppLayout.getHeight(190),
                      decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
                        image: DecorationImage(
                            fit:BoxFit.cover,
                            image: AssetImage("assets/images/hl.jpg"))
                      ),

                    ),
                    Gap(AppLayout.getHeight(12)),
                    Text("30% Discount on Pre-Booking.Also Free Service on Resutrant \nHurry Up!"
                    ,
                    style: Style.headlineStyle2,),
                  ],
                ),

              ),
              Column(

                children: [
                  Stack(
                    children: [
                      Expanded(
                        flex: 3,
                        child: Container(
                          width: size.width*0.44,
                          height: AppLayout.getHeight(200),
                          decoration: BoxDecoration(
                              color: Color(0xFF3AB8B8),
                              borderRadius: BorderRadius.circular(AppLayout.getHeight(18))
                          ),
                          padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15)),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Discount only \nFor Premium Customer's \nSubscribe Now!",
                                style: Style.headlineStyle2.copyWith(fontWeight: FontWeight.bold,color:Colors.white ),),
                              Gap(AppLayout.getHeight(30)),

                              Container(

                                  width: size.width*0.20,
                                  height: AppLayout.getHeight(30),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      borderRadius: BorderRadius.circular(AppLayout.getHeight(5))
                                  ),
                                  child: Center(child: Text('Take It',style: Style.headlineStyle3.copyWith(fontWeight: FontWeight.bold,fontSize: 15,color:Colors.white ),)))
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        right: -45,
                        top: -40,
                        child: Container(
                        padding: EdgeInsets.all(AppLayout.getHeight(30)),
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(width: 18,color: Color(0xFF189999)),
                            color: Colors.transparent
                        ),
                      ),)
                    ],
                  ),
                  Gap(AppLayout.getHeight(12)),
                  Container(
                    width: size.width*0.44,
                    height: AppLayout.getHeight(210),
                    decoration:
                    BoxDecoration(
                      color: Colors.redAccent.shade200,
                      borderRadius: BorderRadius.circular(AppLayout.getHeight(20))
                    ),
                    padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(15),vertical: AppLayout.getHeight(15)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Wow!Payment Discount on Caedrs Payments'
                        ,style: Style.headlineStyle1.copyWith(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ],

      ),


    );
  }
}
