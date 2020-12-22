import 'package:flutter/material.dart';

class Notification_mngmnt extends StatefulWidget {
  @override
  _Notification_mngmnt createState() => _Notification_mngmnt();
}

class _Notification_mngmnt extends State<Notification_mngmnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Notification Management',
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
                      icon: Icon(Icons.send),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Text('Send Notifications'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.delete),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(28, 0, 28, 0),
                        child: Text('Delete Notifications'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.skip_previous_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(18, 0, 18, 0),
                        child: Text('Previous Notifications'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.feedback_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 0, 25, 0),
                        child: Text('Feedbacks Recieved'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.meeting_room),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(42, 0, 42, 0),
                        child: Text('PTM Requests'),
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
