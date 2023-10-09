import 'package:flutter/material.dart';


class MySecondScreen extends StatefulWidget {

  var data;
  var passdata;
  MySecondScreen({this.data, this.passdata ,  super.key});

  @override
  State<MySecondScreen> createState() => _MySecondScreenState();
}

class _MySecondScreenState extends State<MySecondScreen> {

  List<Card> _buildGridCards(int count) {
    List<Card> cards = List.generate(
      count,
          (int index) {
        return Card(
          color: Colors.amberAccent,
          clipBehavior: Clip.antiAlias,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              AspectRatio(
                aspectRatio: 18.0 / 11.0,
                child: Icon(Icons.diamond, size: 50,),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(16.0, 12.0, 16.0, 8.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text('Title'),
                    SizedBox(height: 8.0),
                    Text('Secondary Text'),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
    return cards;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Center(child: Text("SHRINE")),
         leading: IconButton(
          icon: Icon(Icons.menu, semanticLabel: 'menu'), onPressed: () {
           print('Menu button');},
        ),
        actions: [
          IconButton(onPressed: (){
            print('Search button');
           }, icon: Icon(Icons.search, semanticLabel: "search",)),
          IconButton(onPressed: (){
            print('Filter button');
          }, icon: Icon(Icons.tune, semanticLabel: "filter"))],
        ),
          body: GridView.count(crossAxisCount: 2, padding: EdgeInsets.all(16.0),
            childAspectRatio: 8.0 / 9.0,
            children: _buildGridCards(10),));
  }
}