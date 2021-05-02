import 'package:flutter/material.dart';

class Logo extends StatelessWidget {

  final String title;

  const Logo({Key key, @required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 170,
        margin: EdgeInsets.only(top: 50),
        child: Column(
          children: <Widget>[
            Image(image: AssetImage('assets/tag-logo.png')),
            SizedBox(height: 20.0,),
            Text(this.title, style: TextStyle(fontSize: 30),)
          ],
        ),
      ),
    );
  }
}

class Labels extends StatelessWidget {

  final String text1;
  final String text2;
  final String route;

  const Labels({
    Key key, 
    @required this.text1, 
    @required this.text2,
    @required this.route,
   }) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          Text(
            this.text1, 
            style: TextStyle(
              color: Colors.black87, 
              fontSize: 15.0, 
              fontWeight: FontWeight.w300
            ),
          ),
          SizedBox(height: 10.0,),
          GestureDetector(
            child: Text(
              this.text2, 
              style: TextStyle(
                color: Colors.blue[600], 
                fontSize: 16.0, 
                fontWeight: FontWeight.w600
              )
            ),
            onTap: (){
              Navigator.pushReplacementNamed(context, this.route);
            },
          ),
        ],
      ),
    );
  }
}