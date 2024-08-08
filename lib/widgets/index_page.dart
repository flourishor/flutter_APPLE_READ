import 'package:flutter/material.dart';
import 'package:my_app/widgets/My_Icon.dart';
import 'start_reading_page.dart';
import 'book_room_page.dart';
import 'search_page.dart';

class index_page extends StatefulWidget {
  const index_page({super.key});

  @override
  State<index_page> createState() => _index_pageState();
}

class _index_pageState extends State<index_page> {
  int currentIndex = 0;
  final pages = [
    start_reading_page(),
    book_room_page(),
    search_page(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('书库'),
        // ),
      body: pages[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
      currentIndex: currentIndex,
      backgroundColor: Colors.white.withOpacity(0.7),
      selectedItemColor: Colors.black,
      selectedFontSize: 12,
      unselectedFontSize: 12,
      items: const [
        BottomNavigationBarItem(icon: Icon(MyIcons.book), label: '立即阅读'),
        BottomNavigationBarItem(icon: Icon(MyIcons.shelf1), label: '书库'),
        BottomNavigationBarItem(icon: Icon(MyIcons.search), label: '搜索'),
      ],
      onTap: onTapChanged,
    ));
  }

  void onTapChanged(int value) {
    // print(value);
    if(currentIndex!=value)
      currentIndex = value;
    setState(() {});
  }
}

