import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class AppDoubleTextWidget extends StatelessWidget {
  final String bigText;
  final String smallText;
  const AppDoubleTextWidget({Key? key, required this.bigText,required this.smallText});

  @override
  Widget build(BuildContext context) {
    return  Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          bigText,
          style: Style.headlineStyle1,
        ),
        InkWell(
          onTap: () {
            print("Tapped");
          },
          child: Text( ////uyfyt
           smallText,
            style: Style.textStyle.copyWith(color: Style.primaryColor),
          ),
        ),
      ],
    );
  }
}
