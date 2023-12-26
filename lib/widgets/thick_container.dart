import 'package:flutter/material.dart';

class TickContainer extends StatefulWidget {
  final bool? isColor;
  const TickContainer({Key? key, this.isColor}) : super(key: key);

  @override
  _TickContainerState createState() => _TickContainerState();
}

class _TickContainerState extends State<TickContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(width: 2.5, color:widget.isColor==null? Colors.white:Color(0xFF8ACCF7)),
      ),
    );
  }
}
