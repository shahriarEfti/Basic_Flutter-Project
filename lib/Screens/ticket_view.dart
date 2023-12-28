import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:get/get_utils/src/platform/platform.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';
import 'package:project_test/widgets/column_layout.dart';
import 'package:project_test/widgets/layout_builder_widgets.dart';
import 'package:project_test/widgets/thick_container.dart';

class TicketView extends StatefulWidget {
  final Map<String, dynamic> ticket;
  final bool? isColor;


  const TicketView({Key? key, required this.ticket, this.isColor}) : super(key: key);

  @override
  State<TicketView> createState() => _TicketViewState();
}

class _TicketViewState extends State<TicketView> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);



    return SizedBox(
      width: size.width * 0.85,
      height: AppLayout.getHeight(GetPlatform.isAndroid==true?198:200),


      child: Container(
        margin: EdgeInsets.only(right: AppLayout.getHeight(16)),
        child: Column(
          mainAxisSize: MainAxisSize.min,

          children: [
            Container(
              decoration: BoxDecoration(
                color:widget.isColor ==null? Color(0xFF526799):Colors.white,
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
                        widget.ticket['from']['code'] ,
                        style:widget.isColor==null? Style.headlineStyle3.copyWith(color: Colors.white):Style.headlineStyle3,
                      ),
                      Expanded(child: Container()),
                      TickContainer(isColor: true, ),
                      Expanded(
                        child: Stack(
                          children: [
                            SizedBox(
                              height: AppLayout.getHeight(24),
                              child: AppLayoutBuilder( sections: 6, isColor: false,)
                            ),
                            Center(
                              child: Transform.rotate(
                                angle: 1.5,
                                child: Icon(Icons.local_airport_rounded, color:widget.isColor==null? Colors.white:Color(0xFF8ACCF7)),
                              ),
                            ),
                          ],
                        ),
                      ),
                      TickContainer(isColor: true, ),
                      Expanded(child: Container()),
                      Text(
                        widget.ticket['to']['code'] ,
                        style: widget.isColor==null? Style.headlineStyle3.copyWith(color: Colors.white):Style.headlineStyle3,
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
                          widget.ticket['from']['name'] ,
                          style:widget.isColor==null? Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                        ),
                      ),
                      Text(
                        widget.ticket['flying'] as String,
                        style: widget.isColor==null?Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                      ),
                      SizedBox(
                        width: AppLayout.getWidth(100),
                        child: Text(
                          widget.ticket['to']['name'] ,
                          textAlign: TextAlign.end,
                          style: widget.isColor==null? Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              color: widget.isColor==null? Style.orangeColor:Colors.white,
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
                                  decoration: BoxDecoration(

                                      color:widget.isColor==null? Colors.grey.shade300:Colors.white),
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
                     color:widget.isColor==null? Colors.grey.shade300:Colors.white,
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
                color:widget.isColor==null? Style.orangeColor:Colors.white,
                borderRadius: BorderRadius.only(bottomLeft: Radius.circular(widget.isColor==null?21:0),
                    bottomRight: Radius.circular(widget.isColor==null?21:0)),
              ),
              padding: const EdgeInsets.only(left: 16, top: 10, right: 16, bottom: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppColumnLayout(firstText: widget.ticket['date'],
                          secondText: "Date",
                          alignment: CrossAxisAlignment.start,isColor: widget.isColor,),

                      AppColumnLayout(firstText: widget.ticket['departure_time'],
                        secondText:"Departure Time",
                        alignment: CrossAxisAlignment.start,isColor: widget.isColor,),
                     /* Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.ticket['date'] ,
                            style: Style.headlineStyle3.copyWith(color: Colors.white),
                          ),
                          const Gap(5),
                          Text(
                            "Date",
                            style:widget.isColor==null? Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                          ),
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            widget.ticket['departure_time'] ,
                            style: widget.isColor==null?Style.headlineStyle2.copyWith(color: Colors.white):Style.headlineStyle2,
                          ),
                          const Gap(5),
                          Text(
                            "Departure Time",
                            style: widget.isColor==null?Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                          ),
                        ],
                      ),*/

                      AppColumnLayout(firstText:  widget.ticket['number'].toString(),
                        secondText: "Number",
                        alignment: CrossAxisAlignment.start,isColor: widget.isColor,),
                     /* Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            widget.ticket['number'].toString(),
                            style: widget.isColor==null?Style.headlineStyle2.copyWith(color: Colors.white):Style.headlineStyle2,
                          ),
                          const Gap(5),
                          Text(
                            "Number",
                            style:widget.isColor==null? Style.headlineStyle4.copyWith(color: Colors.white):Style.headlineStyle4,
                          ),
                        ],
                      ),*/
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );

  }
}