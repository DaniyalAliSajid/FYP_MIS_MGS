import 'package:flutter/material.dart';

class AdminPanel extends StatefulWidget {
  @override
  _AdminPanelState createState() => _AdminPanelState();
}

class _AdminPanelState extends State<AdminPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Admin Panel',
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
                      'Welcome To MGS Admin Panel !',
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
                        Navigator.pushNamed(context, '/stdmngmt');
                      },
                      icon: Icon(Icons.book),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Student Management'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/facultymngmnt');
                      },
                      icon: Icon(Icons.person_pin),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Faculty Management'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/otherstaffmngmnt');
                      },
                      icon: Icon(Icons.person),
                      label: Text('Other Staff Management'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/Finance_mngmnt');
                      },
                      icon: Icon(Icons.money),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Finance Management'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/notification_mngmnt');
                      },
                      icon: Icon(Icons.notifications),
                      label: Text('Notification Management'),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/syllabus_planner');
                      },
                      icon: Icon(Icons.message),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Text('Syllabus/Planner'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
