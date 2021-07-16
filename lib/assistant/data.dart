import 'package:free_read/models/category_model.dart';

List<CategoryModel> getCategory() {
  List<CategoryModel> category = new List<CategoryModel>();
  CategoryModel categoryModel = new CategoryModel();

  categoryModel.categoryName = "Business";
  categoryModel.imageUrl ="https://images.unsplash.com/photo-1508385082359-f38ae991e8f2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80";
  category.add(categoryModel);

  categoryModel= new CategoryModel();


  // categoryModel.categoryName='Politics';
  // categoryModel.imageUrl="https://images.unsplash.com/photo-1529107386315-e1a2ed48a620?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=750&q=80";
}
