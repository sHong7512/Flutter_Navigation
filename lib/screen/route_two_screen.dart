import 'package:flutter/material.dart';
import 'package:navigation/main.dart';
import 'package:navigation/screen/route_thress_screen.dart';

import '../layout/main_layout.dart';

class RouteTwoScreen extends StatelessWidget {
  const RouteTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final arguments = ModalRoute
        .of(context)
        ?.settings
        .arguments;

    return MainLayout(
        title: "RouteTwo Screen",
        children: [
          Text(
            'argument : $arguments',
            textAlign: TextAlign.center,
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text('pop'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(
                '/three',
                arguments: 999,
              );
            },
            child: Text('Push Named'),
          ),
          ElevatedButton(
            onPressed: () {
              // Navigator.of(context).pushReplacement(
              //   MaterialPageRoute(
              //     builder: (_) => RouteThreeScreen(987),
              //   ),
              // );
              Navigator.of(context)
                  .pushReplacementNamed(THREE_ROUTE, arguments: 987);
            },
            child: Text('Push Replacenent'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushAndRemoveUntil(
                  MaterialPageRoute(
                    builder: (_) => RouteThreeScreen(),
                  ),
                      (route) => route.settings.name == '/');
            },
            child: Text('Push And Remove Until'),
          ),
        ],
        backgroudColor: Colors.yellow[100] ?? Colors.yellow,
    );
  }
}
