import 'package:flutter/material.dart';

class TickContainer extends StatefulWidget {
  const TickContainer({Key? key}) : super(key: key);

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
        border: Border.all(width: 2.5, color: Colors.white),
      ),
    );
  }
}
