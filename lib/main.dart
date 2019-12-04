import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue.shade600,
        body: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/background.jpg"),
              fit: BoxFit.cover,
            ),
          ),
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: CircleAvatar(
                    radius: 50.0,
                    backgroundImage: AssetImage("images/profile.jpg"),
                  ),
                ),
                Text(
                  "Max Weber",
                  style: TextStyle(
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Lobster",
                      color: Colors.white),
                ),
                Text(
                  "FULL STACK DEVELOPER",
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.blueGrey.shade100,
                    letterSpacing: 2.5,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                      height: 10.0,
                      width: 300.0,
                      child: Column(
                        children: <Widget>[
                          Divider(
                            color: Colors.blueGrey.shade100,
                            height: 5.0,
                          ),
                          Divider(color: Colors.blueGrey.shade100, height: 5.0),
                        ],
                      )),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  color: Colors.white,
                  child: ListTile(
                      leading: Icon(
                        Icons.phone_android,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        "+49 163 6270680",
                        style: TextStyle(
                          fontSize: 20.0,
                          color: Colors.blueGrey.shade900,
                        ),
                      )),
                ),
                Card(
                  margin:
                      EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
                  color: Colors.white,
                  child: ListTile(
                      leading: Icon(
                        Icons.mail,
                        color: Colors.blueGrey,
                      ),
                      title: Text(
                        "max.weber@myracledesign.de",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: Colors.blueGrey.shade900,
                        ),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
