import 'package:flutter/material.dart';
void main()=>runApp(MyflutterApp());
class MyflutterApp   extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Scaffold(
      appBar: AppBar(title: Text("MyApp"),),
      body: material(
        Color:Colors.green
        child:Center(
          child: Text(
            "MyApp",
          ),
        )

      ),
      


    ),
   );
  }
}