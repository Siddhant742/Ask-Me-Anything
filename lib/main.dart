import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0xF7310822),
          title: Text('Ask Me Anything'),
        ),
        body: ballPage(),
      ),
    ),
  );
}

class ballPage extends StatefulWidget {
  const ballPage({Key? key}) : super(key: key);

  @override
  State<ballPage> createState() => _ballPageState();
}

class _ballPageState extends State<ballPage> {
  int ballNumber = 2;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xA8310822),
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: TextButton(
                child: Image.asset('images/ball$ballNumber.png'),
                onPressed: () {
                  setState(() {
                    ballNumber = Random().nextInt(5) + 1;
                  });
                }
              ),
            ),
          ],
        ),
      ),
    );
  }
}
