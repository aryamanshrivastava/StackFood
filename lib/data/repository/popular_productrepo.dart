import 'package:food_delivery/data/api/api_client.dart';
import 'package:get/get.dart';

class PopularProduct extends GetxService {
  final ApiClient apiClient;
  PopularProduct({required this.apiClient});
  Future<Response> getPopularProductList() async {
    return await apiClient.getData("https://www.aryaman.com/api/product/list");
    
  }
}
