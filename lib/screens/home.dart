import 'package:flutter/material.dart';
import 'package:free_read/helpers/data.dart';
import 'package:free_read/models/category_model.dart';
import 'package:free_read/screens/books.dart';
import 'package:free_read/screens/news.dart';
import 'package:free_read/screens/homescreen.dart';
class Home extends StatefulWidget {

  @override
  _HomeState createState() => _HomeState();


}
class _HomeState extends State<Home> {
  int currentIndex=0;
  final List<Widget> _children=[
    HomeScreen(),
    CategoryTile(
        // 'https://images.unsplash.com/photo-1462206092226-f46025ffe607?ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8YnVzaW5lc3N8ZW58MHx8MHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=500&q=60','Niz'
    ),
    Books(),
  ];


  void _incrementTab(index){
    setState(() {
      currentIndex=index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
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
          ],
          onTap: (index) {
            _incrementTab(index);
          }
        ),
      ),

    ],
    );
  }
}