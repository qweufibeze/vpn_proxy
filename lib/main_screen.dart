import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'My Flutter App',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(255, 126, 159, 160),
      child: Column(
        children: [
          const Flexible(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Is it Moscow?",
                  style: TextStyle(fontSize: 32),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  "Russia",
                  style: TextStyle(fontSize: 19),
                ),
              ],
            ),
          ),
          Flexible(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.all(16.0), // Уменьшил размер Padding
              child: Card(
                elevation: 12.0,
                child: Container(
                  width: 300,
                  height: 300,
                  child: const Center(
                    child: Text("Moscow"),
                  ),
                ),
              ),
            ),
          ),
          Flexible(
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "False",
                    ),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text("True"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
