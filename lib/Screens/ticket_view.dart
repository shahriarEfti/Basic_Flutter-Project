import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:project_test/widgets/thick_container.dart';

class TicketView extends StatefulWidget {
  final Map<String, dynamic> ticket;


  const TicketView({Key? key, required this.ticket}) : super(key: key);

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);


    return Container(
      width: size.width * 0.85,
      height: AppLayout.getHeight(200),

      margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
      child: Column(
        mainAxisSize: MainAxisSize.min,

        children: [
          Container(
            decoration: BoxDecoration(
              color:  Color(0xFF526799),
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(AppLayout.getHeight(21)),
                topRight: Radius.circular(AppLayout.getHeight(21)),
              ),
            ),
            padding: EdgeInsets.all(AppLayout.getHeight(16)),
            child: Column(
              children: [
                Row(
                  children: [
                    Text(
                      widget.ticket['from']['code'] as String,
                      style: Style.headlineStyle3.copyWith(color: Colors.white),
                    ),
                    Expanded(child: Container()),
                    TickContainer(),
                    Expanded(
                      child: Stack(
                        children: [
                          SizedBox(
                            height: AppLayout.getHeight(24),
                            child: LayoutBuilder(
                              builder: (BuildContext context, BoxConstraints constraints) {
                                return Flex(
                                  direction: Axis.horizontal,
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  mainAxisSize: MainAxisSize.max,
                                  children: List.generate(
                                    (constraints.constrainWidth() / 6).floor(),
                                        (index) => SizedBox(
                                      width: 3,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(color: Colors.white),
                                      ),
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                          Center(
                            child: Transform.rotate(
                              angle: 1.5,
                              child: Icon(Icons.local_airport_rounded, color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                    TickContainer(),
                    Expanded(child: Container()),
                    Text(
                      widget.ticket['to']['code'] as String,
                      style: Style.headlineStyle3.copyWith(color: Colors.white),
                    ),
                  ],
                ),
                const Gap(3),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        widget.ticket['from']['name'] as String,
                        style: Style.headlineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                    Text(
                      widget.ticket['flying'] as String,
                      style: Style.headlineStyle4.copyWith(color: Colors.white),
                    ),
                    SizedBox(
                      width: AppLayout.getWidth(100),
                      child: Text(
                        widget.ticket['to']['name'] as String,
                        textAlign: TextAlign.end,
                        style: Style.headlineStyle4.copyWith(color: Colors.white),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Container(
            color: Style.orangeColor,
            child: Row(
              children: [
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(10),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(10),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.all(12.0),
                    child: LayoutBuilder(
                      builder: (BuildContext context, BoxConstraints constraints) {
                        return Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: List.generate(
                            (constraints.constrainWidth() / 15).floor(),
                                (index) => SizedBox(
                              width: 5,
                              height: 1,
                              child: DecoratedBox(
                                decoration: BoxDecoration(color: Colors.white),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ),
                ),
                SizedBox(
                  height: AppLayout.getHeight(20),
                  width: AppLayout.getWidth(20),
                  child: DecoratedBox(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            decoration: BoxDecoration(
              color: Style.orangeColor,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(21), bottomRight: Radius.circular(21)),
            ),
            padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          widget.ticket['date'] as String,
                          style: Style.headlineStyle3.copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Date",
                          style: Style.headlineStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          widget.ticket['departure_time'] as String,
                          style: Style.headlineStyle2.copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Departure Time",
                          style: Style.headlineStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          widget.ticket['number'].toString(),
                          style: Style.headlineStyle2.copyWith(color: Colors.white),
                        ),
                        const Gap(5),
                        Text(
                          "Number",
                          style: Style.headlineStyle4.copyWith(color: Colors.white),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );

  }
}