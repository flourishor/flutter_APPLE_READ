import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class reading_page extends StatefulWidget {
  const reading_page({super.key});

  @override
  State<reading_page> createState() => _reading_pageState();
}

class _reading_pageState extends State<reading_page> {
  bool menu = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          // backgroundColor: Color.fromRGBO(254, 255, 254, 0.0),
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: Container(),
          title: Text(
            '俗世奇人',
            style: TextStyle(color: Colors.grey),
          ),
          centerTitle: true,
          // 这里设置标题居中
          actions: [
            Visibility(
                visible: menu,
                child: CupertinoButton(
                  child: Icon(Icons.close_rounded,
                  color: Colors.grey,),
                  onPressed: () => Navigator.pop(context),
                ))
          ],
        ),
        body: Container(
          padding: EdgeInsets.only(top: 90),
          color: Color.fromRGBO(240, 226, 200, 1),
          child: Stack(
            children: [
              Center(
                child: Container(
                  // color: Colors.blue,
                  height: 700,
                  width: 100,
                  alignment: Alignment.center,
                  child: InkWell(
                    onTap: () {
                      setState(() {
                        menu = !menu;
                      });
                    },
                  ),
                ),
              ),
              Column(
                children: [
                  Center(
                    child: Text('Nothing'),
                  ),
                ],
              ),
            ],
          ),
        ),
        bottomNavigationBar: Stack(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                    child: Container(
                        color: Color.fromRGBO(240, 226, 200, 1),
                        child: Padding(
                          padding: const EdgeInsets.only(bottom: 24.0),
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                          ),
                        ))),
              ],
            ),
            Visibility(
              visible: menu,
              child: Container(
                width: 430,
                height: 30,
                // color: Colors.lightGreen,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 40.0),
                          child: Container(
                            child: Text('1/1'),
                            color: Color.fromRGBO(240, 226, 200, 1),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 20.0),
                          child: InkWell(
                            onTap: () => print('11111'),
                            child: Icon(Icons.menu_open_rounded),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            )
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.center,
            //   children: [
            //     Visibility(
            //       visible: menu,
            //       child: Container(
            //         height: 45,
            //         width: 300,
            //         color: Colors.grey,
            //         child: Row(
            //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //           children: [
            //             Column(),
            //             Column(
            //               children: [
            //                 Text('1/1'),
            //               ],
            //             ),
            //             Column(
            //               children: [
            //                 RawMaterialButton(onPressed: ()=>print('nm'),child: Icon(Icons.add),),
            //                 SizedBox(height: 20,),
            //                 // CupertinoButton(
            //                 //   child: Icon(Icons.add),
            //                 //   onPressed: () => print('菜单'),
            //                 // ),
            //               ],
            //             ),
            //           ],
            //         ),
            //       ),
            //     ),
            //   ],
            // ),
          ],
        ));
  }
}
