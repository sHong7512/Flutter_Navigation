import 'package:flutter/material.dart';

class MainLayout extends StatelessWidget {
  final String title;
  final List<Widget> children;
  final Color backgroudColor;

  const MainLayout(
      {Key? key,
      required this.title,
      required this.children,
      required this.backgroudColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(    //안드로이드 백버튼으로 앱종료 막기
      onWillPop: () async {
        // true - pop 가능
        // false - pop 불가능
        return Navigator.of(context).canPop();
      },
      child: Scaffold(
        backgroundColor: backgroudColor,
        appBar: AppBar(
          title: Text(title),
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: children,
          ),
        ),
      ),
    );
  }
}
