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
    CategoryTile("https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80",'Business'),//include the link and name
    Books(),
    Sources(),

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
         type: BottomNavigationBarType.fixed,
         backgroundColor:Colors.grey[850],
         fixedColor: Colors.white,
         unselectedItemColor: Colors.grey,
         selectedFontSize: 16,
         unselectedFontSize: 12,
         items:
          [
          new BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home_outlined),
          ),
          new BottomNavigationBarItem(
              label: 'News',
            icon: Icon(Icons.topic_outlined),
          ),
          new BottomNavigationBarItem(
              icon: Icon(Icons.book_outlined),
              label: 'Books',
          ),
            new BottomNavigationBarItem(
              label: 'Sources',
              icon: Icon(Icons.cake_outlined),
            ),
        ],
        onTap: (index) {
          _incrementTab(index);
        }
      ),
    );
  }
}