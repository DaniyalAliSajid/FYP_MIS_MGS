import 'package:flutter/material.dart';

class StudentPanel extends StatefulWidget {
  @override
  _StudentPanel createState() => _StudentPanel();
}

class _StudentPanel extends State<StudentPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Student Panel',
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
                      'Welcome To MGS Student Panel !',
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
                        Navigator.pushNamed(context, '/subjects_registered');
                      },
                      icon: Icon(Icons.app_registration),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Subjects Registered'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/overall_attendance');
                      },
                      icon: Icon(Icons.track_changes),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(13, 0, 13, 0),
                        child: Text('Overall Attendance'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/faculty_assigned');
                      },
                      icon: Icon(Icons.person_outline_outlined),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Text('Faculty Assigned'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/latest_upt_std');
                      },
                      icon: Icon(Icons.update_sharp),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
                        child: Text('Latest Updates'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.feedback),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                        child: Text('Feedback/Review'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.book),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                        child: Text('Diary Updates'),
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
