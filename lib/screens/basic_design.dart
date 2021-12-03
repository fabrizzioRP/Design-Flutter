import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        body: Column(
          children: [
            Image(
              image: AssetImage('assets/landscape.jpg'),
            ),
            _Title(),
            _Buttoms(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: Text(
                'Voluptate fugiat nisi esse pariatur do consectetur est laborum voluptate ullamco exercitation dolor dolor. Cillum incididunt nulla nulla sunt. Est exercitation ad magna magna consequat incididunt qui laborum quis anim minim esse. Minim laborum aute amet occaecat incididunt non id voluptate. Minim laborum nisi amet dolor tempor qui fugiat duis anim fugiat ut esse ea ex.',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.justify,
              ),
            ),
          ],
        ),
      );
}

class _Title extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(vertical: 20, horizontal: 40),
        child: Row(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Este es el titulo de la imagen',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Colors.white)),
                Text('Este es el subtitulo',
                    style: TextStyle(color: Colors.white)),
              ],
            ),
            Expanded(child: Container()),
            Icon(Icons.star, color: Colors.red),
            Text('41'),
          ],
        ),
      );
}

class _Buttoms extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.symmetric(horizontal: 30, vertical: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomButtom(
              icon: Icons.call,
              name: 'CALL',
            ),
            CustomButtom(
              icon: Icons.mail,
              name: 'MAIL',
            ),
            CustomButtom(
              icon: Icons.share,
              name: 'SHARE',
            ),
          ],
        ),
      );
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final String name;

  const CustomButtom({
    required this.icon,
    required this.name,
  });

  @override
  Widget build(BuildContext context) => Column(
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(this.icon, color: Colors.red.shade400),
            color: Colors.blue,
            iconSize: 30.0,
          ),
          Text(this.name,
              style: TextStyle(
                color: Colors.red.shade400,
              )),
        ],
      );
}
