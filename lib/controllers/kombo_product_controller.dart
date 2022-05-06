import 'package:deliverydich/data/repository/kombo_product_repo.dart';
import 'package:get/get.dart';

class KomboProductController extends GetxController{
  final KomboProductRepo komboProductRepo;
  KomboProductController({required this.komboProductRepo});
  List<dynamic> _komboProductList=[];
  List<dynamic> get komboProductList => _komboProductList;

  Future<void> getKomboProductList()async {
    Response response = await komboProductRepo.getKomboProductList();
    if(response.statusCode==200){
      _komboProductList=[];
      //_komboProductList.addAll();
      update();
    }else{

    }
  }
}