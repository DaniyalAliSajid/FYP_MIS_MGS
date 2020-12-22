import 'package:flutter/material.dart';

class Syllabus_planner extends StatefulWidget {
  @override
  _Syllabus_planner createState() => _Syllabus_planner();
}

class _Syllabus_planner extends State<Syllabus_planner> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Syllabus/Planner Management',
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
                      icon: Icon(Icons.playlist_add_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(38, 0, 38, 0),
                        child: Text('Add Syllabus'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.update_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text('Update/Delete Syllabus'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.playlist_add_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Text('Add/Delete Booklist'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.timeline),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Text('Update Timetable'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.insert_chart_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text('Datesheet Management'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.bubble_chart),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(39, 0, 39, 0),
                        child: Text('Yearly Planner'),
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
