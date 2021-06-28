import 'package:flutter/cupertino.dart';
import 'package:free_read/helpers/data.dart';
import 'package:free_read/models/category_model.dart';

class CategoryTile extends StatefulWidget {
  final imageUrl, categoriesName;
  CategoryTile(
      this.imageUrl,this.categoriesName);

  State<CategoryTile> createState() => _CategoryTileState();
}

class _CategoryTileState extends State<CategoryTile> {


  List<CategoryModel> categories = [];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories=getCategories();

  }


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Stack(
            children: <Widget>[
              Image.network(widget.imageUrl,width: 120,height: 60,),
            ],
          ),
        ],
      ),
    );
  }
}

