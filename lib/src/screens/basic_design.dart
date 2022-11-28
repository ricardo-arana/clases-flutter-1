

import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
            child: Text('Minim dolor do mollit est pariatur laborum voluptate occaecat sunt aliquip ex. Incididunt eu aute aute amet voluptate esse ea non proident proident sint aliqua. Do ad reprehenderit excepteur culpa occaecat sit. Adipisicing dolore ea fugiat ullamco pariatur dolore magna sit sunt consectetur deserunt proident. Dolore mollit culpa aliquip ut mollit sunt eiusmod laboris dolore proident et tempor deserunt. Do magna adipisicing in adipisicing tempor voluptate fugiat aliqua mollit.'),
          )
        ],
      )
    );
  }
}



class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric( horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            Text('Oeschinen Lake Campground', style: TextStyle( fontWeight: FontWeight.bold)),
            Text('Kandersteg, Switzerland', style: TextStyle( color: Colors.black45)),
          ]),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),

        ]
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustomButton(icon: Icons.call, text: 'CALL'),
          CustomButton(icon: Icons.near_me, text: 'ROUTE'),
          CustomButton(icon: Icons.share, text: 'SHARE'),
        ]
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustomButton({
    Key? key,
    required this.icon,
    required this.text
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(this.icon, color: Colors.blue),
      Container(margin: EdgeInsets.symmetric( vertical: 5)),
      Text(this.text, style: TextStyle(color: Colors.blue))
    ],);
  }
}