import 'package:flutter/material.dart';

class Other_staff_mngmnt extends StatefulWidget {
  @override
  _Other_staff_mngmnt createState() => _Other_staff_mngmnt();
}

class _Other_staff_mngmnt extends State<Other_staff_mngmnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Other Staff Management',
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
                      onPressed: () {},
                      icon: Icon(Icons.app_registration),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Text('Register Staff Member'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                        child: Text('Delete Staff Member'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.person_outline_outlined),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
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
                        padding: const EdgeInsets.fromLTRB(45, 0, 45, 0),
                        child: Text('Fine Staff Member'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.money),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text('Salary Status of Staff Member'),
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
