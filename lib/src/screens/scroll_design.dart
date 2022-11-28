import 'package:flutter/material.dart';


class ScrollDesignScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Background(),

          MainContent()
        ],
      )
   );
  }
}



class Background extends StatelessWidget {
  const Background({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff30BAD6),
      height: double.infinity,
      alignment: Alignment.topCenter,
      child: Image(image: AssetImage('assets/scroll.png')));
  }
}

class MainContent extends StatelessWidget {
  const MainContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final textStyle = TextStyle(fontWeight: FontWeight.bold,fontSize: 55, color: Colors.white);
    return SafeArea(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox( height: 30,),
          Text('11º', style: textStyle),
          Text('Miercoles', style: textStyle),
          Expanded(child: Container(),),
          Icon(Icons.keyboard_arrow_down, size: 100, color: Colors.white)
    
        ]
      ),
    );
  }
}