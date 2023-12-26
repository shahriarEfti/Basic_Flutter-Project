import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:project_test/utils/app_layout.dart';
import 'package:project_test/utils/app_styles.dart';

class HotelScreen extends StatefulWidget {
  final Map<String, dynamic> hotel;

  const HotelScreen({Key? key, required this.hotel}) : super(key: key);

  @override
  State<HotelScreen> createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return Container(
      width: size.width * 0.6,
      height:AppLayout.getHeight(350),
      padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 17),
      margin: const EdgeInsets.only(right: 17, top: 5),
      decoration: BoxDecoration(
        color: Style.primaryColor,
        borderRadius: BorderRadius.circular(24),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 10,
            offset: Offset(0, 0.5)

          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: AppLayout.getHeight(180),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Style.primaryColor,
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage("assets/images/${widget.hotel['image']}"),
              ),
            ),
          ),
          const Gap(15),
          Text(
              widget.hotel['place'],
              style: Style.headlineStyle2.copyWith(color: Colors.white),
            ),

          const Gap(15),
          Text(
              widget.hotel['destination'],
              style: Style.headlineStyle3.copyWith(color: Colors.white),
            ),

          const Gap(15),
           Text(
              '${widget.hotel['price']} TK',
              style: Style.headlineStyle4.copyWith(color: Colors.white),
            ),

        ],
      ),
    );
  }
}
