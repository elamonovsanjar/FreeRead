import 'package:flutter/cupertino.dart';

class CategoryTile extends StatelessWidget {
  final imageUrl, categoryName;
  CategoryTile(this.imageUrl,this.categoryName);
  @override
  Widget build(BuildContext context) {
    return Container(

      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: <Widget>[
                Image.network(imageUrl,width: 200,height: 100,),

              ],
            ),
          ],
        ),
      ),
    );
  }
}

