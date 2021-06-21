import 'package:flutter/cupertino.dart';

class CategoryTile extends StatelessWidget {
  final imageUrl, categoriesName;
  CategoryTile(this.imageUrl,this.categoriesName);
  //this.imageUrl,this.categoriesName
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text('Headline Here'),
          Stack(
            children: <Widget>[
              Image.network(imageUrl,width: 120,height: 60,),
            ],
          ),
        ],
      ),
    );
  }
}

