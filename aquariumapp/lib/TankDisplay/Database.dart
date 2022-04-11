import 'package:flutter/material.dart';

class DatabaseScreen extends StaelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions:[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){
              Navigator.push
            }
          )
        ]
      )
    )
  }
}