import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: 
        Container(
          color: Color(0xff064635),
          child: TextButton(onPressed:(){
            Navigator.push(
              context, 
              PageRouteBuilder(
                transitionDuration: Duration(milliseconds: 500),
                reverseTransitionDuration: Duration(milliseconds: 500),
                transitionsBuilder: (context, animation, animationTime, child){
                  return ScaleTransition(
                    alignment: Alignment.topLeft,
                    scale: animation,
                    child: child,
                  );
                },
                pageBuilder: (context, animation, animationTime){
                  return Page2();
                }
              ),
            );
          },
          child: const Text('Animation Flutter', style: TextStyle(color: Colors.white)),
          ),
        ),
      ),
    );
  }
}

class Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Color(0xff064635),),
      body: Center(
        child: Text('Animation Great', style: TextStyle(
          fontWeight: FontWeight.w900, color: Color(0xff519259),
          fontSize: 24,
        )),
      ),
    );
  }
}


