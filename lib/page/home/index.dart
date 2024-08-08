import 'package:flutter/material.dart';
import 'package:my_app/widgets/index_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: PageContent(name: '图书',),
      child: index_page(),
    );
  }
}
