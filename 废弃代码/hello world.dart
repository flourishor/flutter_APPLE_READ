void main ()
{
  
  var a=3;   //编译器自动推断
  final b=1;
  final c="qwe";
  print(a);
  String d='asdasd';//可以用单引号
  String e='''
final
seconf
''';
// a.toString();
// d+=e;
print("hello ${c+c}");//将a插入string类型,{}的作用是避免语义冲突
var list = [1,2.0,3];
List<int> list1 = [1,2,3];
int f = 1.0 as int;//类型转换
Map<String,int> teams = {
  "red":100,
  "bule":222,
};
teams["green"]=102;
print(["green"]);
}
import 'package:flutter/material.dart';

main(){
  runApp(MaterialApp(
    home: MyHomePage(),
  ));
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.ac_unit_outlined),
          onPressed: (){},
        ),
        title: Text("我的第一款App"),
        actions: [
          IconButton(
            icon: Icon(Icons.ac_unit_outlined),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.ac_unit_outlined),
            onPressed: (){},
          )
        ],
      ),
      body: Container(
        alignment: Alignment.center,
        child: Text("我是Body部分"),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "主页"),
          BottomNavigationBarItem(icon: Icon(Icons.home),label: "主页")

        ],
      ),
    );
  }
}