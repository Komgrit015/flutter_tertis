
  import 'package:flutter/material.dart';

  void main() => runApp(MyApp());

  class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tertis Game',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MyHomePage(title: 'Tertis Game'),
    );
  }
  }

  class MyHomePage extends StatefulWidget {
    MyHomePage({Key key, this.title}) : super(key: key);

    final String title;

    @override
    _MyHomePageState createState() => _MyHomePageState();
  }

  int COUNT_ROW = 14;
  int COUNT_COL = 10;
  double SIZE_AREA_UNIT = 36;


   const colorBackgroundGameArea = Colors.black;
   const colorBorderGameArea = Colors.blue;
   const colorBorderAreaUnit = Color(0xff2c3e50);
   const colorBackgroundApp = Color(0xff2c3e50);



  class _MyHomePageState extends State<MyHomePage> {
    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: Container(color:colorBackgroundApp ,
            child: Center(
                child: Container(
                    decoration: BoxDecoration(border: Border.all(width: 12, color: colorBackgroundGameArea ),
                        borderRadius: BorderRadius.all(Radius.circular(8))),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: buildGameArea()
                    ))
            )),
      );
    }
    List<Widget> buildGameArea() {
      List<Widget> list = List();
      for (int i = 0; i < COUNT_ROW; i++) {
        list.add(buildRow());
      }
      return list;
    }

    Row buildRow() {
      List<Widget> list = List();
      for (int i = 0; i < COUNT_COL; i++) {
        list.add(buildAreaUnit());
      }
      return Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: list);
    }

    Widget buildAreaUnit() {
      return Container(width: SIZE_AREA_UNIT, height: SIZE_AREA_UNIT,
          decoration: BoxDecoration(color: colorBorderAreaUnit ,
              border: Border.all(width: 1, color: colorBorderAreaUnit )));
    }
  }