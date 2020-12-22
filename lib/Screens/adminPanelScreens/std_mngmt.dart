import 'package:flutter/material.dart';

class Std_Management extends StatefulWidget {
  @override
  _Std_Management createState() => _Std_Management();
}

class _Std_Management extends State<Std_Management> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Student Management',
        ),
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
            child: Center(
              child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 50, 12, 50),
                    child: Text(
                      'Select The Functions Below !',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/register_std');
                      },
                      icon: Icon(Icons.app_registration),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Text('Register Student'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/delete_std');
                      },
                      icon: Icon(Icons.delete),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                        child: Text('Delete Student'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person_outline_outlined),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(27, 0, 27, 0),
                        child: Text('Set/Update Profile'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.warning),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(48, 0, 48, 0),
                        child: Text('Fine Student'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.money_sharp),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Text('Fee Status of Students'),
                      ),
                    ),
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(12.0),
                  //   child: RaisedButton.icon(
                  //     onPressed: () {},
                  //     icon: Icon(Icons.book),
                  //     label: Padding(
                  //       padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                  //       child: Text('Queries Management'),
                  //     ),
                  //   ),
                  // ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
