import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Home(),
));

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}


class _HomeState extends State<Home> {
  List<String> list = ['List item 1','List item 2'];
  String newItem = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
        centerTitle: true,
        backgroundColor: Colors.cyan[800],
      ),
      body: Stack(
        children: <Widget>[
          ListView.builder(
            itemCount : list.length,
            itemBuilder: (context, index){
              return Card(
                child: ListTile(
                  onTap: () {},
                  title: Text(list[index]),
                ),
              );
            },

          ),
          Positioned(
            bottom: 10,
            left: 10,
            child:Container(
              width: 260,
              height: 60,
              child: TextField(
                onChanged: (val){
                  setState(() {
                    newItem = val;
                  });
                },
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            list.add(newItem);
          });
        },
        child: Text(
            '+',
            style: TextStyle(
              fontSize: 18.0
            ),
        ),
        backgroundColor: Colors.cyan[800],
      ),
    );
  }
}