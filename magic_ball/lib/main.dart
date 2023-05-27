import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(
    ballpage(),
  );
}

class ballpage extends StatelessWidget {
  const ballpage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          backgroundColor: Colors.blue[800],
          title: Text(
            'Ask Me Anything',
            textAlign: TextAlign.center,
          ),
        ),
        body: magicball(),
      ),
    );
  }
}

class magicball extends StatefulWidget {
  const magicball({Key key}) : super(key: key);

  @override
  State<magicball> createState() => _magicballState();
}

class _magicballState extends State<magicball> {
  int ballnumber = 3;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballnumber = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset('images/ball$ballnumber.png'),
            ),
          ),
        ],
      ),
    );
  }
}
