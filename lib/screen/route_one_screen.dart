import 'package:flutter/material.dart';
import 'package:navigation/layout/main_layout.dart';
import 'package:navigation/screen/route_two_screen.dart';

class RouteOneScreen extends StatelessWidget {
  final int? number;

  const RouteOneScreen({Key? key, this.number}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Color? c = Colors.red[100];
    final Color cc = Colors.red[100] ?? Colors.red;

    return MainLayout(
      title: "RouteOne Screen",
      children: [
        Text(
          'arguments : ${number.toString()}',
          textAlign: TextAlign.center,
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).maybePop();
          },
          child: Text('Maybe Pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop(456);
          },
          child: Text('pop'),
        ),
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (BuildContext context) => RouteTwoScreen(),
                settings: RouteSettings(arguments: 789),
              ),
            );
          },
          child: Text('push'),
        ),
      ],
      backgroudColor: Colors.red[100] ?? Colors.red,
    );
  }
}
