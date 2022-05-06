import 'package:deliverydich/data/api/api_client.dart';
import 'package:get/get.dart';

class KomboProductRepo extends GetxService{
  final ApiClient apiClient;
  KomboProductRepo({required this.apiClient});

  Future<Response> getKomboProductList() async{
    return await apiClient.getData("https://www.dbdich.com/api/product/list");
  }
}