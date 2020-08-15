import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: TextField(
                  onChanged: (val){
                    setState(() {
                      text = val;
                    });
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(left: 10),
                child: FlatButton(
                  child: Icon(
                      Icons.search,
                      color: Colors.white),
                  color: Colors.cyan,
                  onPressed: (){
                    Navigator.pushNamed(context, '/webpage', arguments: {'text':text});
                  }
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
