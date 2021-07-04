import 'package:flutter/material.dart';
import 'package:free_read/helpers/data.dart';
import 'package:free_read/models/category_model.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;
  List<bool> numberTruthList = [false, true, true, true, true, true, true];

  @override
  Widget build(BuildContext context) {
    return PageView(
      children: [
        Scaffold(
          appBar: AppBar(
            title: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  'Real',
                  style: TextStyle(
                    color: Colors.grey[800],
                  ),
                ),
                Text(
                  'News',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
            elevation: 0.0,
            centerTitle: true,
            backgroundColor: Colors.white,
          ),
          body: Container(
            child: Column(
              children: <Widget>[
                Container(
                  child: ListView.builder(
                    itemCount: getCategories().length,
                      itemBuilder: (context, index){
                      return CategoryTile(
                        //imageUrl: getCategories().,
                      );
                      }
                  ),
                ),

                // _children[currentIndex],
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class CategoryTile extends StatefulWidget {
  final imageUrl, categoriesName;

  CategoryTile({this.imageUrl, this.categoriesName});

  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {
  List<CategoryModel> categories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = getCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.network(
                widget.imageUrl,
                width: 120,
                height: 60,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
