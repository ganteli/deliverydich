import 'package:deliverydich/controllers/kombo_product_controller.dart';
import 'package:deliverydich/data/api/api_client.dart';
import 'package:deliverydich/data/repository/kombo_product_repo.dart';
import 'package:get/get.dart';

Future<void>init()async {
  Get.lazyPut(() => ApiClient(appBaseUrl: "https://www.dbstech.com"));

  Get.lazyPut(() => KomboProductRepo(apiClient: Get.find()));

  Get.lazyPut(() => KomboProductController(komboProductRepo: Get.find()));
}