import 'package:flutter/material.dart';
import 'package:material_floating_search_bar/material_floating_search_bar.dart';

class DeleteStd extends StatefulWidget {
  @override
  _DeleteStd createState() => _DeleteStd();
}

class _DeleteStd extends State<DeleteStd> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[900],
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.blue[900],
        title: Text(
          'Delete Student',
        ),
      ),
      body: Stack(
        fit: StackFit.expand,
        children: [
          SafeArea(
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
                        padding: const EdgeInsets.fromLTRB(12, 5, 12, 500),
                        child: Text(
                          'Search The Student Below !',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          searchBarUI(),
        ],
      ),
    );
  }

  Widget searchBarUI() {
    return FloatingSearchBar(
      hint: 'Search...',
      openAxisAlignment: 0.0,
      backgroundColor: Colors.grey[200],
      maxWidth: 600,
      axisAlignment: 0.0,
      scrollPadding: EdgeInsets.only(top: 16, bottom: 20),
      elevation: 4.0,
      onQueryChanged: (query) {},
      transitionCurve: Curves.easeInOut,
      transitionDuration: Duration(milliseconds: 500),
      transition: CircularFloatingSearchBarTransition(),
      debounceDelay: Duration(microseconds: 500),
      actions: [
        FloatingSearchBarAction(
          showIfClosed: false,
          child: CircularButton(
            icon: Icon(Icons.person),
            onPressed: () {
              print('Pressed');
            },
          ),
        ),
        FloatingSearchBarAction.searchToClear(
          showIfClosed: false,
        )
      ],
      builder: (context, transition) {
        return ClipRRect(
          child: Material(
            color: Colors.white,
            child: Container(
              height: 200,
              color: Colors.grey[200],
              child: Column(
                children: [
                  ListTile(
                    title: Text('Search Student Name'),
                    subtitle: Text('And Tap For More Info'),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
