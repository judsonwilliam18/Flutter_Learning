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

    // Decode JSON
    Map<String, dynamic> data = jsonDecode(jsonString);

    // Employee List
    List employees = data["ust global employee"];

    // Company List
    List companies = data["ust global company"] ??[];

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("JSON Display"),
        ),

        body: Padding(
          padding: EdgeInsets.all(12),

          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  "Employees",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 10),

                // Employee Data
                for (var emp in employees)
                  Card(
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Name : ${emp['name']}"),
                          Text("Age : ${emp['Age']}"),
                          Text("Salary : ${emp['Salary']}"),
                        ],
                      ),
                    
                  ),

                

                Text(
                  "Companies",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),

              

                // Company Data
                for (var company in companies)
                  Card(
                    
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Country : ${company['country']}"),
                          Text("Employees : ${company['employees']}"),
                        ],
                      ),
                    
                  ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}