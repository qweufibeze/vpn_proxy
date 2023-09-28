import 'package:flutter/material.dart';

class SwitchWidget extends StatefulWidget {
  const SwitchWidget ({super.key});

  @override
  State<SwitchWidget> createState() => _SwitchState();
}

class _SwitchState extends State<SwitchWidget> {
  bool light = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      height: 120,
      child: Transform.scale(
        scale: 3.5,
        child: Switch(
          value: light,
          activeColor: Colors.red,
          onChanged: (bool value) {
            // This is called when the user toggles the switch.
            setState(() {
              light = value;
            });
          },
        ),
      ),
    );
  }
}