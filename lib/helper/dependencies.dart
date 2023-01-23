import 'package:get/get.dart';
import '../controllers/popular_product_controller.dart';
import '../data/API/api_client.dart';
import '../data/repository/popular_productrepo.dart';

Future<void> init() async {
  Get.lazyPut(
      () => ApiClient(appBaseUrl: "https://www.aryaman.com")); //apiclient
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find())); //repo
  Get.lazyPut(() =>
      PopularProductController(popularProductRepo: Get.find())); //controller
}
