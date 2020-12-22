import 'package:flutter/material.dart';

class FacultyPanel extends StatefulWidget {
  @override
  _FacultyPanel createState() => _FacultyPanel();
}

class _FacultyPanel extends State<FacultyPanel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Faculty Panel',
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
                      'Welcome To MGS Faculty Panel !',
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
                        Navigator.pushNamed(context, '/subjects_assigned');
                      },
                      icon: Icon(Icons.subject),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Subjects Assigned'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/classes_assigned');
                      },
                      icon: Icon(Icons.collections_bookmark_sharp),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Classes Assigned'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/next_due');
                      },
                      icon: Icon(Icons.notification_important),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Text('Next Due Class'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/latest_updates');
                      },
                      icon: Icon(Icons.update_sharp),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Text('Latest Updates'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {
                        Navigator.pushNamed(context, '/feedback_rreview');
                      },
                      icon: Icon(Icons.feedback),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(11, 0, 11, 0),
                        child: Text('Feedback/Review'),
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
