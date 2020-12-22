import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'admin_panel.dart';

class HomeLogin extends StatefulWidget {
  @override
  _HomeLoginState createState() => _HomeLoginState();
}

class _HomeLoginState extends State<HomeLogin> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  String _email, _password;
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.blue[900],
        title: Text('Muslim Grammar School MIS'),
        centerTitle: true,
      ),
      body: Form(
        key: _formKey,
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
                  padding: const EdgeInsets.fromLTRB(10, 0, 10, 80),
                  child: Text(
                    'Welcome To MGS School System !',
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
                    controller: emailController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Please Provide Username';
                      }
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(hintText: "Username"),
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
                    controller: passwordController,
                    validator: (input) {
                      if (input.isEmpty) {
                        return 'Please Provide Password';
                      }
                    },
                    onSaved: (input) => _email = input,
                    decoration: InputDecoration(hintText: "Password"),
                    obscureText: true,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.0,
                ),
                RaisedButton(
                  onPressed: signIn,
                  child: Text(
                    'Admin Login',
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
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/faculty');
                        },
                        child: Text(
                          'Faculty Portal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.cyan,
                      ),
                      RaisedButton(
                        onPressed: () {
                          Navigator.pushNamed(context, '/student');
                        },
                        child: Text(
                          'Student Portal',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        color: Colors.cyan,
                      ),
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

  Future<void> signIn() async {
    final FirebaseAuth _user = FirebaseAuth.instance;
    final _formState = _formKey.currentState;
    //print(_formState.validate());
    if (_formState.validate()) {
      _formState.save();
      try {
        //UserCredential user = await _user.signInWithEmailAndPassword(
        //email: _email, password: _password);
        Navigator.pushNamed(context, '/admin');
      } catch (e) {
        print(e.message);
      }
    }
  }
}
