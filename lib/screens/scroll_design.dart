import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ScrollScreen extends StatelessWidget {
  final boxDecoration = BoxDecoration(
    gradient: LinearGradient(
      begin: Alignment.topCenter,
      end: Alignment.bottomCenter,
      stops: [0.5, 0.5],
      colors: [
        Color(0xff5EE8C5),
        Color(0xff30BAD6),
      ],
    ),
  );

  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: Color(0xff30BAD6),
        body: Container(
          decoration: boxDecoration,
          child: PageView(
            physics: BouncingScrollPhysics(),
            scrollDirection: Axis.vertical,
            children: [_Page1(), _Page2()],
          ),
        ),
      );
}

class _Page1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        children: [_Background(), _ContentMain()],
      );
}

class _Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Color(0xff30BAD6),
        height: double.infinity,
        alignment: Alignment.topCenter,
        child: Image(
          image: AssetImage('assets/scroll-1.png'),
        ),
      );
}

class _ContentMain extends StatelessWidget {
  final textStyle =
      TextStyle(fontSize: 50, fontWeight: FontWeight.bold, color: Colors.white);

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 70),
            Text('11°', style: this.textStyle),
            SizedBox(height: 20),
            Text('Miércoles', style: this.textStyle),
            Expanded(child: Container()),
            Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white),
          ],
        ),
      );
}

class _Page2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        color: Color(0xff30BAD6),
        child: Center(
          child: TextButton(
            onPressed: () {},
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 40),
              child: Text(
                'Bienvenido',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
            ),
            style: TextButton.styleFrom(
              backgroundColor: Color(0xff0098FA),
              shape: StadiumBorder(),
            ),
          ),
        ),
      );
}
