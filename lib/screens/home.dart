

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<String> cities=['Karachi Branch', 'Lahore Branch', 'Islamabad Branch'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: cities.length,
              itemBuilder: (ctx, index){
                return  Card(
             child: Row(
             mainAxisAlignment: MainAxisAlignment.spaceBetween ,
             children: [
             Icon(Icons.more_vert),
             Text(cities[index]),
             Icon(Icons.arrow_forward_ios, size: 10,)
             ]),
                   );
            }),
          )
        
        ],
      ),
    );
  }
}