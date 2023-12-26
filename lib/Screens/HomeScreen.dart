import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_test/Screens/Hotels_Screen.dart';
import 'package:project_test/Screens/ticket_view.dart';
import 'package:project_test/utils/app_info_list.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:gap/gap.dart';
import 'package:project_test/widgets/double_text_widget.dart';


class Homescreen extends StatefulWidget {
  const Homescreen({Key? key}) : super(key: key);

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Style.bgColor,
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning', style: Style.headlineStyle3),
                    const Gap(5),
                    Text(
                      'Book Tickets',
                      style: Style.headlineStyle1,
                    ),
                  ],
                ),

          Container(
            height: 50,
            width: 80,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/logo.png"),
              ),
            ),
          ),
    ],
                ),
                const Gap(25),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color(0xFFF4F6FD),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 12),
                  child: Row(
                    children: [
                      Icon(
                        FluentIcons.search_16_regular,
                        color: const Color(0xFFBFC205),
                      ),
                      const SizedBox(width: 10),
                      Text(
                        'Search',
                        style: Style.headlineStyle4,
                      ),
                    ],
                  ),
                ),
                const Gap(45),
               AppDoubleTextWidget(bigText: "Upcoming Fligths", smallText: "View All")
              ],
            ),
          ),
          const Gap(15),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(left: 20 ),
            child: Row(
              children:
              TicketList.map((singleTicket) => TicketView(ticket: singleTicket)).toList(),

            ),
          ),
          const Gap(15),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child:AppDoubleTextWidget(bigText: "Hotels", smallText: "View All")
          ),
          const Gap(17),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.only(right: 20, left: 20),
            child: Row(
              children: hotelList.map((singleHotel) => HotelScreen(hotel: singleHotel)).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
