
import 'package:crud_localdatabase/create/bindings.dart';
import 'package:crud_localdatabase/create/create.dart';
import 'package:crud_localdatabase/db/db_helper.dart';
import 'package:crud_localdatabase/pages/binding.dart';
import 'package:crud_localdatabase/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DbHelper.initDb ();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: "/",
      initialBinding: HomeBindings(),
      getPages: [
        GetPage(name: "/", page: () => const HomePage(),binding: HomeBindings()),
        GetPage(name: "/create", page: ()=> const CreatePage(),binding: CreateBindings())
      ],
    );
  }
}


