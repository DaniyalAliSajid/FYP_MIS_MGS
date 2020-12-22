import 'package:flutter/material.dart';

class RegisterStd extends StatefulWidget {
  @override
  _RegisterStd createState() => _RegisterStd();
}

class _RegisterStd extends State<RegisterStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Register Student'),
        centerTitle: true,
      ),
      body: SafeArea(
        child: Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage('lib/assets/bluee.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 10),
                  child: Text(
                    'Enter Details Below To Register Student',
                    style: TextStyle(
                      fontSize: 21,
                      color: Colors.amber,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Name"),
                    // cursorColor: Colors.white,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Father Name"),
                    //obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Mother Name"),
                    //obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Father Contact No"),
                    //obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Mother Contact No"),
                    //obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 22.0,
                ),
                Center(
                  child: TextFormField(
                    decoration: InputDecoration(hintText: "Father Profession"),
                    //obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                RaisedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/admin');
                  },
                  child: Text(
                    'Register',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  color: Colors.amber,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10, 50, 10, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      // RaisedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, '/faculty');
                      //   },
                      //   child: Text(
                      //     'Faculty Portal',
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      //   color: Colors.cyan,
                      // ),
                      // RaisedButton(
                      //   onPressed: () {
                      //     Navigator.pushNamed(context, '/student');
                      //   },
                      //   child: Text(
                      //     'Student Portal',
                      //     style: TextStyle(
                      //       fontWeight: FontWeight.bold,
                      //       color: Colors.black,
                      //     ),
                      //   ),
                      //   color: Colors.cyan,
                      // ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
