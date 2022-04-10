// Automatic FlutterFlow imports
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
import 'package:analog_clock/analog_clock.dart';

class Widget1 extends StatefulWidget {
  const Widget1({
    Key key,
    this.width,
    this.height,
    this.isLive,
    this.color,
  }) : super(key: key);

  final double width;
  final double height;
  final bool isLive;
  final Color color;

  @override
  _Widget1State createState() => _Widget1State();
}

class _Widget1State extends State<Widget1> {
  @override
  Widget build(BuildContext context) {
    return AnalogClock(
      decoration: BoxDecoration(
        color: widget.color,
        shape: BoxShape.circle,
      ),
      isLive: widget.isLive,
    );
  }
}
