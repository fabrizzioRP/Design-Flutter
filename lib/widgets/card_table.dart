import 'dart:ui';

import 'package:flutter/material.dart';

class CardTablePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Table(
        children: <TableRow>[
          TableRow(
            children: <Widget>[
              _SingleCard(
                color: Colors.blue,
                icon: Icons.border_all,
                text: 'General',
              ),
              _SingleCard(
                  color: Colors.purple,
                  icon: Icons.car_rental,
                  text: 'Transport'),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.pinkAccent,
                icon: Icons.shopping_bag,
                text: 'Shopping',
              ),
              _SingleCard(
                  color: Colors.redAccent,
                  icon: Icons.electric_bike,
                  text: 'Bikes'),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.brown.shade400,
                icon: Icons.map,
                text: 'Map',
              ),
              _SingleCard(
                  color: Colors.yellowAccent,
                  icon: Icons.phone_android,
                  text: 'Phones'),
            ],
          ),
          TableRow(
            children: [
              _SingleCard(
                color: Colors.orange.shade400,
                icon: Icons.restaurant_rounded,
                text: 'Foods',
              ),
              _SingleCard(
                color: Colors.greenAccent,
                icon: Icons.mail,
                text: 'Mails',
              ),
            ],
          ),
        ],
      );
}

class _SingleCard extends StatelessWidget {
  final IconData icon;
  final Color color;
  final String text;

  const _SingleCard({
    required this.icon,
    required this.color,
    required this.text,
  });

  @override
  Widget build(BuildContext context) => _CardBackground(
        child: Container(
          height: 180,
          decoration: BoxDecoration(
            color: Color.fromRGBO(62, 66, 107, 0.7),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              CircleAvatar(
                backgroundColor: this.color,
                child: Icon(this.icon, size: 35, color: Colors.white),
                radius: 30,
              ),
              SizedBox(height: 30),
              Text(
                this.text,
                style: TextStyle(color: this.color, fontSize: 18),
              ),
            ],
          ),
        ),
      );
}

class _CardBackground extends StatelessWidget {
  final Widget child;
  const _CardBackground({required this.child});

  @override
  Widget build(BuildContext context) => Container(
        margin: EdgeInsets.all(15),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20),
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
            child: this.child,
          ),
        ),
      );
}
