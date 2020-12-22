import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/delete_std.dart';
import 'package:fyp_sms/Screens/admin_panel.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/faculty_mngmnt.dart';
import 'package:fyp_sms/Screens/facultyPanelScreens/classes_assigned.dart';
import 'package:fyp_sms/Screens/facultyPanelScreens/feedback_review.dart';
import 'package:fyp_sms/Screens/facultyPanelScreens/latest_updates.dart';
import 'package:fyp_sms/Screens/facultyPanelScreens/subjects_assigned.dart';
import 'package:fyp_sms/Screens/faculty_panel.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/finance_mngmnt.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/notification_mngmnt.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/other_staff_mngmnt.dart';
import 'package:fyp_sms/Screens/adminPanelScreens/std_mngmt.dart';
import 'package:fyp_sms/Screens/studentPanelScreens/facultyAssigned.dart';
import 'package:fyp_sms/Screens/studentPanelScreens/latest_updates_std.dart';
import 'package:fyp_sms/Screens/studentPanelScreens/overall_attendance.dart';
import 'package:fyp_sms/Screens/studentPanelScreens/subjects_registered.dart';
import 'package:fyp_sms/Screens/student_panel.dart';
import 'package:fyp_sms/Screens/login.dart';
import 'Screens/adminPanelScreens/register_std.dart';
import 'Screens/adminPanelScreens/syllabus_planner.dart';
import 'Screens/facultyPanelScreens/next_due.dart';
import 'package:firebase_core/firebase_core.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Loading(),
        '/login': (context) => HomeLogin(),
        '/admin': (context) => AdminPanel(),
        '/faculty': (context) => FacultyPanel(),
        '/student': (context) => StudentPanel(),
        '/stdmngmt': (context) => Std_Management(),
        '/facultymngmnt': (context) => Faculty_Mngmnt(),
        '/otherstaffmngmnt': (context) => Other_staff_mngmnt(),
        '/Finance_mngmnt': (context) => Finance_mngmnt(),
        '/notification_mngmnt': (context) => Notification_mngmnt(),
        '/syllabus_planner': (context) => Syllabus_planner(),
        '/subjects_assigned': (context) => SubjectsAssigned(),
        '/classes_assigned': (context) => ClassesAssigned(),
        '/next_due': (context) => NextDue(),
        '/latest_updates': (context) => LatestUpdates(),
        '/feedback_rreview': (context) => Feedback_Review(),
        '/subjects_registered': (context) => SubjectsRegistered(),
        '/overall_attendance': (context) => OverallAttendance(),
        '/faculty_assigned': (context) => FacultyAssigned(),
        '/latest_upt_std': (context) => LatestUpdatesStd(),
        '/register_std': (context) => RegisterStd(),
        '/delete_std': (context) => DeleteStd(),
      },
    ),
  );
}

class Loading extends StatefulWidget {
  @override
  _LoadingState createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  startTime() async {
    // Navigator.pushReplacementNamed(context, '/login');
    var duration = new Duration(seconds: 3);
    return new Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => HomeLogin()));
  }

  @override
  void initState() {
    super.initState();
    startTime();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Text(
              'Sit Tight Back !',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                color: Colors.amber,
              ),
            ),
          ),
          SpinKitDualRing(
            color: Colors.white,
            size: 50.0,
          ),
        ],
      ),
    );
  }
}
