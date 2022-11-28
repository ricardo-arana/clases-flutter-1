import 'dart:ui';

import 'package:flutter/material.dart';

class CardTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Table(
      children: [
        TableRow(children: [
          _SingleCard(
            color: Colors.blue,
            icon: Icons.border_all,
            text: 'General',
          ),
          _SingleCard(
            color: Colors.purpleAccent,
            icon: Icons.directions_bus,
            text: 'Bus',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.pinkAccent,
            icon: Icons.shop,
            text: 'Buy',
          ),
          _SingleCard(
            color: Colors.orange,
            icon: Icons.insert_drive_file,
            text: 'File',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.blueAccent,
            icon: Icons.movie_filter,
            text: 'Entertaiment',
          ),
          _SingleCard(
            color: Colors.green,
            icon: Icons.cloud,
            text: 'Grocery',
          ),
        ]),
        TableRow(children: [
          _SingleCard(
            color: Colors.red,
            icon: Icons.collections,
            text: 'Photos',
          ),
          _SingleCard(
            color: Colors.teal,
            icon: Icons.help_outline,
            text: 'General',
          ),
        ]),
      ],
    );
  }
}

class _SingleCard extends StatelessWidget {
  final Color color;
  final IconData icon;
  final String text;

  const _SingleCard({
    Key? key,
    required this.color,
    required this.icon,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var column = Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          backgroundColor: this.color,
          radius: 30,
          child: Icon(this.icon, color: Colors.white, size: 35),
        ),
        SizedBox(height: 10),
        Text(this.text, style: TextStyle(color: this.color, fontSize: 18)),
      ],
    );
    return _CardBackground(
      child: column,
    );
  }
}

class _CardBackground extends StatelessWidget {
  final Widget child;

  const _CardBackground({Key? key, required this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(15),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 5, sigmaY: 5),
          child: Container(
            height: 180,
            decoration: BoxDecoration(
                color: Color.fromRGBO(62, 66, 107, 0.7),
                borderRadius: BorderRadius.circular(20)),
            child: this.child,
          ),
        ),
      ),
    );
  }
}
