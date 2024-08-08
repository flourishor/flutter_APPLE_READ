import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class search_page extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => search_pageState();
}

class search_pageState extends State<search_page> {
  bool visible_appbar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: visible_appbar
            ? null
            : Text(
          '立即阅读',
          style: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontWeight: FontWeight.bold,
            letterSpacing: 3,
          ),
          textAlign: TextAlign.end,
        ),
        centerTitle: true, // 这里设置标题居中
        backgroundColor: Color.fromRGBO(254, 255, 254, 1.0),
        elevation: 0,
      ),
      body: CupertinoScrollbar(
        child: ListView(
          physics: const BouncingScrollPhysics(),
          children: [
            Container(
              color: Color.fromRGBO(254,255,254, 1),
              padding: const EdgeInsets.all(34.0),
              child: Column(
                children: [
                  const Row(
                    children: [
                      Text(
                        '搜索',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 32,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 3,
                        ),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 340,
                        height: 35,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.0),
                          color: Color.fromRGBO(238, 238, 240, 1),
                        ),
                        child: TextField(
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 3,
                          ),
                          decoration: InputDecoration(
                            hintText: "你的书库",
                            contentPadding: EdgeInsets.only(bottom:11),
                            // 占位符文本
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            border: InputBorder.none,
                            // 无边框
                            prefixIcon: Icon(
                              Icons.search, // 搜索图标
                              color: Colors.grey,
                            ),
                            suffixIcon: Icon(
                              Icons.keyboard_voice,
                              color: Colors.grey,
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 600,
                    width: 300,
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16.0),
                                child: Icon(Icons.search),
                              ),
                              Text('搜索书库'),
                            ],
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
