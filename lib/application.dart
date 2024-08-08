import 'package:flutter/material.dart';
import 'package:my_app/page/home/index.dart';
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner:false,
        home:HomePage(),
    );
  }
}
