import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage('android/images/me.jpg'),
              ),
              Text(
                'Govind Sharma',
                style: TextStyle(
                    fontFamily: 'Pacifico',
                    fontSize: 40.0,
                    color: Colors.white),
              ),
              Text(
                'F L U T T E R  D E V E L O P E R',
                style: TextStyle(
                    fontFamily: 'SourceSansPro',
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.teal[100]),
              ),
              SizedBox(
                height: 20.0,
                width: 150.0,
                child: Divider(
                  color: Colors.teal[100],
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 10.0),
                child: Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 20.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.teal,
                    ),
                    title: Text(
                      '+91 8290 456241',
                      style: TextStyle(
                          color: Colors.teal,
                          fontFamily: 'SourceSansPro',
                          fontSize: 20.0),
                    ),
                  ),
                ),
              ),
              Card(
                color: Colors.white,
                margin: EdgeInsets.only(
                    left: 40.0, right: 40.0, top: 20.0, bottom: 10.0),
                child: Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
                    child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.teal,
                      ),
                      title: Text(
                        'govindaa.sharma@gmail.com',
                        style: TextStyle(
                            color: Colors.teal,
                            fontFamily: 'SourceSansPro',
                            fontSize: 20.0),
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
