import 'dart:ui';
import 'dart:math' as math;
import 'package:flutter/material.dart';

class PageContent extends StatelessWidget {
  final String name;

  const PageContent({super.key, required this.name});

  TextStyle get style => const TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.bold,
        letterSpacing: 8,
      );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            name,
            style: style,
          ),
          backgroundColor: Colors.blue,
          elevation: 0.5,
        ),
        body: ListView(
          shrinkWrap: true,
          padding: const EdgeInsets.all(20.0),
          children: <Widget>[
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '立即阅读',
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 8,
                      ),
                    ),
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: AssetImage("assets/03.jpg"),
                      foregroundColor: Colors.white,
                      child: Icon(
                        Icons.check,
                        size: 30,
                      ),
                    )
                  ],
                ),
              ],
            ),
            TextButton(
                onPressed: () => print('跳转至xxx'),
                child: Row(
                  children: [
                    Icon(Icons.add),
                    const Text('今日阅读进度 还剩20分钟'),
                  ],
                )),
            Divider(
              height: 1.0,
              indent: 0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text('继续阅读',
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: Card(
                  elevation: 1,
                  margin: EdgeInsets.all(15),
                  child: Container(
                    alignment: Alignment.center,
                    width: 200,
                    height: 0.618 * 200,
                    margin: EdgeInsets.all(10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage("assets/03.jpg")),
                        Column(
                          children: [
                            Text('未来简史'),
                            Text('[以色列]尤瓦尔·赫利拉'),
                            Text('图书·9%'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ))
              ],
            ),
            TextButton(
                onPressed: () => print('跳转至xxx'),
                child: Row(
                  children: [
                    const Text('之前读过',
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        )),
                    Icon(Icons.keyboard_arrow_right),
                  ],
                )),
            SizedBox(
              height: 100,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                reverse: true,
                padding: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage("assets/03.jpg")),
                        Column(
                          children: [
                            Text('未来简史'),
                            Text('[以色列]尤瓦尔·赫利拉'),
                            Text('图书·9%'),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image(image: AssetImage("assets/03.jpg")),
                        Column(
                          children: [
                            Text('未来简史'),
                            Text('[以色列]尤瓦尔·赫利拉'),
                            Text('图书·9%'),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('阅读目标'),
                Text('坚持每天阅读，提升你的数据，以激励你读完更多图书'),
              ],
            ),
            Stack(
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
                    child: ArcView(),
                  ),
                ),
                Column(
                  children: [
                    Text('今日阅读进度'),
                    Text('20分钟'),

                  ],
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(38.0),
              child: RawMaterialButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18))
                ),
                onPressed: () => print('跳转至xxxx'),
                fillColor: Colors.black,
                textStyle: TextStyle(color: Colors.white),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('继续阅读'),
                    Text('未来简史'),
                  ],
                ),
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text('延长你的4天连续阅读记录'),
                Text('记录是 12 天'),
              ],
            )
          ],
        ),
        //主体
        drawer: Drawer(
          elevation: 3,
          child: _buildChild(),
        ),
      ),
    );
  }
//侧边栏-------------------------------------------------------------------------
  Widget _buildChild() => ListView(
        padding: EdgeInsets.all(20),
        children: const <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(),
            child: Text(
              '图书',
              style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold,
                letterSpacing: 8,
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              Icons.star,
              color: Colors.blue,
            ),
          )
        ],
      );
}

//动画-------------------------------------------------------------------------
class ArcView extends StatefulWidget {
  double width = 200;
  double height = 200;
  @override
  State<StatefulWidget> createState() {

    return ArcViewState();
  }
}

class ArcViewState extends State<ArcView> with SingleTickerProviderStateMixin {
  late AnimationController controller;
  late Curve curve;
  // double progress=0;
  @override
  void initState() {
    super.initState();
    controller = AnimationController(duration:const Duration(seconds: 1),lowerBound:0,upperBound:80,vsync: this);
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
      onTap: (){
        controller.forward(from: 0);
      },
      child: CustomPaint(
        painter: ArcPainter(
          strokeWidth: 12,
          strokeCap: StrokeCap.round,
          gradientColors: const [Color(0xFF54D6A7), Color(0xFF00CDDA)],
          bgColor: const Color(0xFFF3F4F6),
          progress: controller.value,
          roundColor: Colors.white,
          width: 200,//需要与widget.width一致
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
    final sweepAngle = (math.pi ) * progress / 100;

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