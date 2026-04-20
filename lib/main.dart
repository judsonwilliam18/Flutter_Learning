import 'package:flutter/material.dart';
import 'dart:math';
void main()=>runApp(CoinFlip());
class CoinFlip extends StatelessWidget {
  int CoinHead=0;
Random coinside=new Random();
   @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:Text(
            'The coin is :'+(CoinHead==1?'head':'tail'),
          ),
        ),
        floatingActionButton: FloatingActionButton(
         child: Icon(Icons.attach_money),
          onPressed: () {
            CoinHead=coinside.nextInt(2);
            print(CoinHead);
          },
        ),
      ),
    );
  }
}