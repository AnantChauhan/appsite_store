import 'dart:async';
import 'package:appsite_store/Screens/login_page.dart';
import 'package:flutter/services.dart';
import 'package:scroll_navigation/scroll_navigation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_fortune_wheel/flutter_fortune_wheel.dart';


class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.deepOrange),
      title: 'Collet Daily Reward',
      home: ExamplePage(),
    );
  }
}

class ExamplePage extends StatefulWidget {
  @override
  _ExamplePageState createState() => _ExamplePageState();
}

class _ExamplePageState extends State<ExamplePage> {
  StreamController<int> selected = StreamController<int>();

  @override
  void dispose() {
    selected.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final items = <String>[
      '100',
      '800',
      '125',
      'Better Luck Next Time',
      '500',
      '10',
      '350',
      '999',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Collet Daily Reward'),
      ),
      body: GestureDetector(
        onTap: () {
          setState(() {
            selected.add(
              Fortune.randomInt(0, items.length),
            );
          });
        },
        child: Column(
          children: [
            Expanded(
              child: FortuneWheel(
                selected: selected.stream,
                items: [
                  for (var it in items) FortuneItem(child: Text(it)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void main() {
  configureApp();
  runApp(DemoApp());
}

void configureApp() {
}

class DemoApp extends StatefulWidget {
  @override
  _DemoAppState createState() => _DemoAppState();
}

class _DemoAppState extends State<DemoApp> {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    
      
        return MaterialApp.router(
          title: 'How Much Anant Loves Arya',
      
          
          routerDelegate: _appRouter.delegate(),
          routeInformationParser: _appRouter.defaultRouteParser(),
        
      
    );
  }
}

AppRouter() {
}

