import 'package:flutter/material.dart';

class book_room_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => book_room_pageState();
}

class book_room_pageState extends State<book_room_page> {
  bool visible_appbar = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: visible_appbar
              ? null
              : Text(
            '书库',
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
        body: Container(
          padding: const EdgeInsets.all(34.0),
          color: Color.fromRGBO(254,255,254, 1),
          child: ListView(
            physics: BouncingScrollPhysics(),
            children: [
              Row(
                children: [
                  Text(
                    '书库',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 3,
                    ),
                  )
                ],
              ),
              Divider(
                color: Color.fromRGBO(15, 17, 26, 0.6),
                height: 1.0,
                indent: 0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(Icons.menu_sharp),
                      SizedBox(width: 10,),
                      Text(
                        '藏书',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 18,
                          letterSpacing: 3,
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      IconButton(
                          onPressed: () => print('chose!'),
                          icon: Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 16,))
                    ],
                  ),
                ],
              ),
              Divider(
                color: Color.fromRGBO(15, 17, 26, 0.6),
                height: 1.0,
                indent: 0,
              ),
              _build_bookrack(),
              _build_bookrack(),
              _build_bookrack(),
            ],
          ),
        ));
  }

  Row _build_bookrack() {
    return Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 300,
                  width: 160,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: Image(
                          image: AssetImage("assets/俗世奇人.jpg"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('22%'),
                          IconButton(
                              onPressed: () => print('chose2!'),
                              icon: Icon(Icons.keyboard_control_rounded))
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 300,
                  width: 160,
                  child: Column(
                    children: [
                      Card(
                        elevation: 10,
                        child: Image(
                          image: AssetImage("assets/俗世奇人.jpg"),
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('22%'),
                          IconButton(
                              onPressed: () => print('chose2!'),
                              icon: Icon(Icons.keyboard_control_rounded))
                        ],
                      )
                    ],
                  ),
                )
              ],
            );
  }
}
