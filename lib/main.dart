import 'dart:convert';

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // JSON String
  final String jsonString = '''
  { 
    "ust global employee": [ 
      {
        "name": "judson",
        "Age": 24,
        "Salary": 24000
      },
      {
        "name": "David",
        "Age": 25,
        "Salary": 27000
      }
    ]
  }
  ''';
  

  @override
  Widget build(BuildContext context) {
    // Convert JSON string to Map
    final data = jsonDecode(jsonString);
    final encodedata = jsonEncode(jsonString);
    final decodeddata = jsonDecode(jsonString);


    debugPrint("encodedata: ====${encodedata}");
    debugPrint("decodedata: ====${decodeddata}");


    // Get employee list
    List employees = data["ust global employee"];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Employee Data"),
        ),
        body: ListView.builder(
          itemCount: employees.length,
          itemBuilder: (context, index) {
            return Card(
              child: ListTile(
                title: Text(
                  employees[index]["name"],
                ),
                subtitle: Text(
                  "Age: ${employees[index]["Age"]}\n"
                  "Salary: ${employees[index]["Salary"]}",
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}