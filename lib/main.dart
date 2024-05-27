import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:seatu_ersih/view/HomepageView.dart';
import 'package:seatu_ersih/view/register_page/RegisterviewPage.dart';
import 'routes/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.orderbookingregular,
      getPages: Routes.pages,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: HomePage(),
    );
  }
}
