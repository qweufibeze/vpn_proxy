import 'package:flutter/material.dart';

import 'switch_widget.dart';

void main() => runApp(const SwitchApp());

class SwitchApp extends StatelessWidget {
  const SwitchApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(
        body: Center(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 425,
              ),
              SwitchWidget()
            ],
          ),
        ),
      ),
    );
  }
}
