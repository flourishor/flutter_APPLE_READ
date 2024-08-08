import 'package:flutter/material.dart';
import 'dart:math' as math;
import 'package:flutter/cupertino.dart';
import 'reading_page.dart';

class start_reading_page extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => start_reading_pageState();
}

class start_reading_pageState extends State<start_reading_page> {
  bool visible_appbar = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        title: visible_appbar
            ? null
            : const Text(
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
          physics: BouncingScrollPhysics(),
          shrinkWrap: true,
          padding: const EdgeInsets.all(0.0),
          children: <Widget>[
            //第一部分------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            Container(
              color: Color.fromRGBO(254, 255, 254, 1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Column(
                      children: [
                        const Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      left: 7.0, bottom: 0, top: 0),
                                  child: Text(
                                    '立即阅读',
                                    style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 32,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 3,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CircleAvatar(
                                  radius: 18,
                                  backgroundImage: AssetImage("assets/03.jpg"),
                                  foregroundColor: Colors.white,
                                  // child: Icon(
                                  //   Icons.check,
                                  //   size: 30,
                                  // ),
                                ),
                                SizedBox(
                                  width: 8,
                                )
                              ],
                            )
                          ],
                        ),
                        TextButton(
                            onPressed: () => print('跳转至xxx'),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.expand_circle_down,
                                  size: 14,
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '今日阅读进度',
                                  style: TextStyle(
                                      color: Color.fromRGBO(1, 157, 219, 1)),
                                ),
                                SizedBox(
                                  width: 4,
                                ),
                                Text(
                                  '目标已达成',
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ],
                            )),
                        const Divider(
                          color: Color.fromRGBO(15, 17, 26, 0.6),
                          height: 1.0,
                          indent: 0,
                        ),
                        Row(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 14, bottom: 0.0),
                              child: Text(
                                '继续阅读',
                                style: _build_title_2(),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34.0, top: 0),
                    child: _build_my_horizontal_scroll_sizebox(context),
                  ),
                ],
              ),
            ),
//第二部分--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
            Container(
              color: Color.fromRGBO(240, 240, 240, 1),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(34.0),
                    child: Column(
                      children: [
                        TextButton(
                            onPressed: () => print('跳转至xxx'),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  '之前读过',
                                  style: _build_title_2(),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                const Icon(
                                  Icons.arrow_forward_ios_outlined,
                                  color: Colors.grey,
                                  size: 18,
                                )
                              ],
                            )),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 34),
                    child: _build_my_horizontal_scroll_sizebox(context),
                  ),
                ],
              ),
            ),
//第三部分----------------------------------------------------------------------------------------------------------------
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('阅读目标', style: _build_title_2()),
                  const Center(
                    child: Text('坚持每天阅读，提升你的数据，以激励你读完更多图书',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 17,
                          color: Colors.grey,
                        )),
                  ),
                ],
              ),
            ),
            Container(
              width: 800,
              height: 400,
              // color: Colors.lightBlue,
              child: Stack(
                textDirection: TextDirection.rtl,
                alignment: Alignment.center,
                fit: StackFit.loose,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Transform.rotate(
                      // angle: -(math.pi + math.pi / 4 + math.asin(22 * 0.5 / 100)),
                      angle: -(math.pi),
                      // 0,
                      child: ArcView(
                        progress: 20,
                      ),
                    ),
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 80.0),
                        child: Column(
                          children: [
                            Column(
                              children: [
                                Text(
                                  '今日阅读进度',
                                  style: _build_title_3(),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                const Icon(
                                  Icons.check_circle,
                                  color: Color.fromRGBO(0, 157, 219, 1),
                                  size: 56,
                                ),
                                const Text(
                                  '115 分钟',
                                  style: TextStyle(
                                    fontSize: 13,
                                    color: Colors.black,
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.of(context).push(
                                  PageRouteBuilder(
                                    opaque: false, // 设置为false，以保持原页面可见
                                    pageBuilder: (context, animation,
                                        secondaryAnimation) {
                                      return CupertinoHalfPage();
                                    },
                                    transitionsBuilder: (context, animation,
                                        secondaryAnimation, child) {
                                      return SlideTransition(
                                        position: Tween<Offset>(
                                          begin: Offset(0.0, 1.0),
                                          end: Offset.zero,
                                        ).animate(animation),
                                        child: child,
                                      );
                                    },
                                    transitionDuration:
                                        Duration(milliseconds: 500),
                                  ),
                                );
                              },
                              child: const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    '调整目标',
                                    style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  Icon(
                                    Icons.keyboard_arrow_right,
                                    color: Colors.grey,
                                    size: 18,
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 60.0),
                        child: RawMaterialButton(
                          shape: const RoundedRectangleBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          onPressed: () => print('跳转至xxxx'),
                          fillColor: Colors.black,
                          textStyle: TextStyle(color: Colors.white),
                          child: Container(
                              height: 56,
                              width: 350,
                              child: InkWell(
                                onTap: () {
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(builder: (context) {
                                      return reading_page();
                                    }),
                                  );
                                },
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      '继续阅读',
                                      style: TextStyle(
                                        fontSize: 16,
                                        color: Colors.white,
                                      ),
                                    ),
                                    Text(
                                      '未来简史',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white70,
                                      ),
                                    ),
                                  ],
                                ),
                              )),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text(
                                '延长你的',
                                style: TextStyle(
                                    fontSize: 18, color: Colors.black),
                              ),
                              Text(
                                ' 4天',
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                '连续阅读记录。',
                                style: TextStyle(
                                    fontSize: 17, color: Colors.black),
                              ),
                              Icon(
                                Icons.keyboard_arrow_right,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                          Text(
                            '记录是 12 天',
                            style:
                                TextStyle(fontSize: 14, color: Colors.grey),
                          ),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Divider(
                color: Color.fromRGBO(15, 17, 26, 0.6),
                height: 1.0,
                indent: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20.0),
              child: achevement_part(),
            ),
            Column(
              children: [
                Text(
                  '年度目标以达成！',
                  style: TextStyle(color: Colors.lightBlue),
                ),
                Text(
                  '已读完3本图书。继续阅读！',
                  style: TextStyle(color: Colors.grey),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '调整目标',
                      style: TextStyle(color: Colors.black),
                    ),
                    Icon(Icons.keyboard_arrow_right)
                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 46.0,left: 34.0),
              child: Divider(
                color: Color.fromRGBO(15, 17, 26, 0.6),
                height: 1.0,
                indent: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(34.0),
              child: Row(
                children: [
                  Text('条款与条件',style: TextStyle(color: Colors.grey),),
                  Icon(Icons.arrow_forward_ios,color: Colors.grey,size: 12,),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  TextStyle _build_title_3() {
    return TextStyle(
      fontSize: 16,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    );
  }

  TextStyle _build_title_2() {
    return TextStyle(
      fontSize: 24,
      color: Colors.black,
      fontWeight: FontWeight.bold,
      letterSpacing: 2,
    );
  }

  // //底部弹出栏---------------------------------------------------------------------------------------------------------
  // Widget _buildCupertinoActionSheet(BuildContext context) => Container(
  //       alignment: Alignment.bottomCenter,
  //       child: CupertinoActionSheet(
  //
  //         title: const Text('每日阅读目标'),
  //         actions: <Widget>[
  //           CupertinoPicker(itemExtent: 40, onSelectedItemChanged: (position)=> Navigator.of(context).pop(), children:time_list.map((e) => Center(child: Text(e))).toList() )
  //           // CupertinoActionSheetAction(
  //           //     onPressed: () => Navigator.of(context).pop(),
  //           //     child: const Text('Dart')),
  //         ],
  //       ),
  //     );

//侧滑组件-------------------------------------------------------------------------------------------------------------------------------------
  SizedBox _build_my_horizontal_scroll_sizebox(BuildContext context) {
    // final controller = ScrollController();
    return SizedBox(
      height: 150,
      child: Container(
        // color: Colors.lightGreenAccent,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          reverse: true,
          child: Padding(
            padding: const EdgeInsets.only(bottom: 48),
            child: Row(
              children: [
                _build_my_book_card(context),
                _build_my_book_card(context),
                _build_my_book_card(context),
              ],
            ),
          ),
          physics: BouncingScrollPhysics(),
        ),
      ),

      // controller.animateTo(100, duration: Duration(seconds: 1), curve: Curves.easeInOut);
    );
  }

  Padding _build_my_book_card(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Card(
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return reading_page();
              }),
            );
          },
          onLongPress: () => {print('long_clicked!')},
          child: Container(
            width: 248,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
              // image: DecorationImage(
              //   image: AssetImage("assets/俗世奇人.jpg"),
              //   fit: BoxFit.cover,
              // ),
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [Colors.black, Colors.grey],
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image(
                    image: AssetImage("assets/俗世奇人.jpg"),
                    height: 74,
                    width: 56,
                    fit: BoxFit.fill,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(top: 13.0, bottom: 13, right: 52),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '俗世奇人',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 15),
                      ),
                      Text(
                        '冯骥才',
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        '图书·11%',
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ),
                Center(
                  child: CupertinoButton(
                    child: const Icon(
                      Icons.keyboard_control,
                      color: Colors.white70,
                    ),
                    onPressed: () {
                      showCupertinoModalPopup(
                        context: context,
                        builder: (BuildContext context) {
                          return CupertinoActionSheet(
                            actions: [
                              CupertinoContextMenuAction(
                                child: Text('Action 1'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  // 处理 Action 1 的点击事件
                                  print('Action 1 Clicked');
                                },
                              ),
                              CupertinoContextMenuAction(
                                child: Text('Action 2'),
                                onPressed: () {
                                  Navigator.pop(context);
                                  // 处理 Action 2 的点击事件
                                  print('Action 2 Clicked');
                                },
                              ),
                            ],
                            cancelButton: CupertinoActionSheetAction(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text('Cancel'),
                            ),
                          );
                        },
                      );
                    },
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

//动画-------------------------------------------------------------------------
class ArcView extends StatefulWidget {
  double width = 335;
  double height = 335;
  double progress;

  ArcView(
      {Key? key, this.width = 335, this.height = 335, required this.progress})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return ArcViewState(progress: progress);
  }
}

class ArcViewState extends State<ArcView> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Curve curve;
  double progress = 60;

  ArcViewState({required this.progress});

  @override
  void initState() {
    super.initState();
    controller = AnimationController(
        duration: const Duration(seconds: 1),
        lowerBound: 0,
        upperBound: progress,
        vsync: this);
    controller.addListener(() {
      setState(() {
        // print('progress');
        print(controller.value);
      });
    });
    controller.forward();
  }

  @override
  void dispose() {
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        controller.forward(from: 0);
      },
      child: CustomPaint(
        painter: ArcPainter(
          strokeWidth: 9,
          strokeCap: StrokeCap.round,
          gradientColors: const [
            Color.fromRGBO(0, 157, 219, 1),
            Color.fromRGBO(0, 157, 219, 1)
          ],
          bgColor: Color.fromRGBO(241, 242, 246, 1),
          progress: controller.value,
          roundColor: Colors.white,
          width: 335, //需要与widget.width一致
        ),
        size: Size(widget.width, widget.height), // 调整大小以适应你的需求
      ),
    );
  }
}

class ArcPainter extends CustomPainter {
  double width;

  ///圆弧粗细
  double strokeWidth;

  ///圆弧边缘显示样式
  StrokeCap strokeCap;

  ///进度条渐变色
  List<Color> gradientColors;

  ///背景颜色
  Color bgColor;

  ///百分比进度，自己内部转换为具体度数
  double progress;

  ///圆点颜色
  Color roundColor;

  ArcPainter(
      {required this.width,
      required this.strokeWidth,
      required this.strokeCap,
      required this.gradientColors,
      required this.bgColor,
      required this.progress,
      required this.roundColor});

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTWH(0, 0, size.width, size.height);

    /// 修正后的开始角度，弧度制
    // final startAngle = math.asin(strokeWidth * 0.5 / (width / 2));
    final startAngle = 0.0;

    /// 扫过的角度，弧度制
    // final sweepAngle = (math.pi + math.pi / 2) * progress / 100;
    final sweepAngle = (math.pi) * progress / 100;

    var gradient = SweepGradient(
      center: Alignment.center,
      colors: gradientColors, // 渐变颜色列表
      startAngle: 0, // 渐变起始位置
      endAngle: 2 * math.pi, // 渐变结束位置
    );

    final paint = Paint()
      ..shader = gradient.createShader(rect) // 使用渐变作为画笔的颜色
      ..style = PaintingStyle.stroke
      ..strokeCap = strokeCap
      ..strokeWidth = strokeWidth;
    final bgPaint = Paint()
      ..color = bgColor
      ..style = PaintingStyle.stroke
      ..strokeCap = strokeCap
      ..strokeWidth = strokeWidth;

    // canvas.drawArc(rect, startAngle, math.pi, false, bgPaint);
    // canvas.drawArc(rect, startAngle+math.pi*0.25, math.pi, false, bgPaint);
    canvas.drawArc(rect, 0.0, math.pi, false, bgPaint);
    canvas.drawArc(rect, startAngle, sweepAngle, false, paint);

    final double drawRadius = width / 2;
    final double center = width / 2;

    ///修正原点初始角度 90度
    // var deg = degToRad(90) + startAngle + sweepAngle;
    // final double dx = center + drawRadius * math.sin(deg);
    // final double dy = center - drawRadius * math.cos(deg);
    // Offset offsetCenter = Offset(dx, dy);
    // final roundPaint = Paint()
    //   ..style = PaintingStyle.fill
    //   ..color = roundColor;
    // // ..strokeWidth = (outerRadius - innerRadius);
    // canvas.drawCircle(offsetCenter, strokeWidth / 2 - 2, roundPaint);
  }

  /// 度数转类似于π的那种角度
  double degToRad(double deg) => deg * (math.pi / 180.0);

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}

//读过的数历史界面-------------------------------------------------------------------------------------------------------------------
class achevement_part extends StatefulWidget {
  @override
  _achevement_partState createState() => _achevement_partState();
}

class _achevement_partState extends State<achevement_part> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            RawMaterialButton(
              onPressed: () {
                setState(
                  () {
                    _currentIndex = (_currentIndex - 1).clamp(0, 2);
                  },
                );
              },
              child: Icon(Icons.arrow_back),
            ),
            Text(
              '${_currentIndex + 2022}读过的图书',
              style: TextStyle(
                fontSize: 17,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            RawMaterialButton(
              onPressed: () {
                setState(
                  () {
                    _currentIndex = (_currentIndex + 1).clamp(0, 2);
                  },
                );
              },
              child: Icon(Icons.arrow_forward),
            ),
          ],
        ),
        IndexedStack(
          index: _currentIndex,
          children: [
            Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  build_book_stack(),
                  build_book_stack(),
                  build_book_stack(),
                ],
              ),
            ),
            Center(
              child: Text('状态栏2内容'),
            ),
            Center(
              child: Text('状态栏3内容'),
            ),
          ],
        ),
      ],
    );
  }

  Stack build_book_stack() {
    return Stack(
      children: [
        Card(
          elevation: 10,
          child: Image(
            image: AssetImage("assets/俗世奇人.jpg"),
            height: 120,
            width: 140 * 0.618,
            fit: BoxFit.fill,
          ),
        ),
        Positioned(
          bottom: -5.0,
          right: -5.0,
          child: Icon(
            Icons.check_circle, // 你想要的图标
            size: 24.0,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}

//底部弹窗---------------------------------------------------------------------------------------------------
class CupertinoHalfPage extends StatelessWidget {
  final List<String> time_list = const [
    '1分钟',
    '2分钟',
    '3分钟',
    '4分钟',
    '5分钟',
    '6分钟',
  ];

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomCenter,
      child: Container(
        height: MediaQuery.of(context).size.height / 4,
        width: MediaQuery.of(context).size.width,
        color: Colors.black,
        child: CupertinoPageScaffold(
          navigationBar: CupertinoNavigationBar(
            leading: null,
            trailing: CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () => Navigator.of(context).pop(),
              child: const Text(
                '完成',
                textAlign: TextAlign.start,
              ),
            ),
            middle: const Text('每日阅读目标'),
          ),
          child: CupertinoPicker(
              itemExtent: 30,
              // onSelectedItemChanged: (position) => Navigator.of(context).pop(),
              onSelectedItemChanged: (position) => print('$position'),
              children: time_list.map((e) => Center(child: Text(e))).toList()),
        ),
      ),
    );
  }
}
