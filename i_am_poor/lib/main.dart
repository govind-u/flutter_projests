import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Center(
            child: Text('I AM POOR'),
          ),
          backgroundColor: Colors.blueGrey,
        ),
        backgroundColor: Colors.white60,
        body: const Center(
          child: Image(
            image: AssetImage('images/coal.jpg'),
          ),
        ),
      ),
    ),
  );
}
