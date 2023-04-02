import 'package:dio/dio.dart';
import 'model.dart';

class ProductRepo {
  final Dio dio;

  ProductRepo({required this.dio});
  List products = [];
  List productsCategory = [];

  Future getproducts() async {
    final response = await dio.get('productssite');
    final productlist = response.data as List;
    products = [];
    productlist.forEach((element) {
      products.add(Product.fromMap(element));
    });
    return products;
  }

  Future getproductscategory(name) async {
    if (name == '') {
      final response = await dio.get('productssite');
    }
    final response = await dio.get('productssite/searchcategory/$name');
    final productlist = response.data as List;
    productsCategory = [];
    productlist.forEach((element) {
      productsCategory.add(Product.fromMap(element));
    });
    return products;
  }

  List images = [
    'assets/images/1.jpg',
    'assets/images/2.jpg',
    'assets/images/1.jpg',
    'assets/images/3.jpg'
  ];
}
