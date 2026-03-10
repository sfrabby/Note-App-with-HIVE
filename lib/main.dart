import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'View/HomePage/UI.dart';

void main()async {
  WidgetsFlutterBinding.ensureInitialized();
   await Hive.initFlutter();
   var myBox = await Hive.openBox("Note");

  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',

      home:  HomePage(),
    );
  }
}

