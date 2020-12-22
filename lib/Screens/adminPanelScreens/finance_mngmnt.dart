import 'package:flutter/material.dart';

class Finance_mngmnt extends StatefulWidget {
  @override
  _Finance_mngmnt createState() => _Finance_mngmnt();
}

class _Finance_mngmnt extends State<Finance_mngmnt> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Finance Management',
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
                      icon: Icon(Icons.edit),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(42, 0, 42, 0),
                        child: Text('Total Expenses'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.equalizer_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(48, 0, 48, 0),
                        child: Text('Total Income'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.analytics_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(54, 0, 54, 0),
                        child: Text('Total Profit'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.money_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Text('Fee/Challans Management'),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: RaisedButton.icon(
                      onPressed: () {},
                      icon: Icon(Icons.auto_delete_rounded),
                      label: Padding(
                        padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                        child: Text('Add/Delete misc. Expense'),
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
