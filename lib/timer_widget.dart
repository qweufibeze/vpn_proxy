import 'dart:async';
import 'package:flutter/material.dart';


class RunTimer extends StatefulWidget {
  const RunTimer ({super.key});

  @override
  State<RunTimer> createState() => _RunTimer();
}

class _RunTimer extends State<RunTimer> {


  String runTimer() {
    return scheduleTimeout(5 * 1000).toString(); // 5 seconds.
  }

  Timer scheduleTimeout([int milliseconds = 10000]) =>
      Timer(Duration(milliseconds: milliseconds), handleTimeout);

  void handleTimeout() {  // callback function
    // Do some work.
  }


  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(runTimer())
    );
  }
}
