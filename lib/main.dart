
import 'package:deliverydich/pages/food/detail_body.dart';
import 'package:deliverydich/pages/food/detail_main.dart';
import 'package:deliverydich/pages/home/home_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'helper/dependencies.dart' as dep;
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dep.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pj pomogute',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MainFoodDetail(),
    );
  }
}
