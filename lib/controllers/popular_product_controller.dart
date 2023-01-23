import 'package:get/get.dart';

import '../data/repository/popular_product.dart';

class PopularProductController extends GetxService {
  final PopularProduct popularProduct;
  PopularProductController({required this.popularProduct});
  List<dynamic> _popularProductList = [];
  List<dynamic> get PopularProductList => _popularProductList;
  Future<void> getPopularProductList() async {
    Response response = await popularProduct.getPopularProductList();
    if (response.statusCode == 200) {
      _popularProductList = [];
      //_popularProductList.addAll();
      
    } else {}
  }
}
