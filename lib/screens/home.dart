import 'package:flutter/material.dart';
import 'package:free_read/screens/books.dart';
import 'package:free_read/screens/headline.dart';
import 'package:free_read/screens/homescreen.dart';
import 'package:free_read/screens/sources.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
  //final List <BottomNavigationBarItem> items;

}
class _HomeState extends State<Home> {
  int currentIndex=0;
  final List<Widget> _children=[
    HomeScreen(),
    CategoryTile(),
    Sources(),
    Books(),
  ];

  void _incrementTab(index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //automaticallyImplyLeading: false,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Free',
              style: TextStyle(
                color: Colors.grey[800],
              ),
            ),
            Text('Read',
            style: TextStyle(
              color: Colors.blue,
            ),
            ),
          ],
        ),
       elevation:0.0,
        centerTitle: true,
        backgroundColor: Colors.white,
      ),
      body: _children[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,

        items: [ 

          new BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
            backgroundColor: Colors.grey[800],
          ),
          new BottomNavigationBarItem(
            icon: Icon(Icons.topic_outlined),
            label: 'Headlines',
            backgroundColor: Colors.grey[800]
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.cake_outlined),
              label: 'Sources',
              backgroundColor: Colors.grey[800]
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Books',
              backgroundColor: Colors.grey[800]
          ),
        ],
        onTap: (index){
          _incrementTab(index);
        },
      ),
    );
  }
}
