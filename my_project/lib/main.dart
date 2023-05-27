import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white24,
        appBar: AppBar(
          title: const Center(
            child: Text('Parrots'),
          ),
          backgroundColor: Colors.blueGrey[900],
        ),
        body: const Center(
          child: Image(
            image: AssetImage('images/parrot.jpeg'),
          ),
        ),
      ),
    ),
  );
}
