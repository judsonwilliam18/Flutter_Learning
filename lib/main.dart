import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main()=>runApp(localstorage());
class localstorage extends  StatefulWidget {
  const localstorage({super.key});

  @override
  State<localstorage> createState() => _localstorageState();
}

class _localstorageState extends State<localstorage> {
   String localstorage='flutter';
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("Localstorage"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(" $localstorage"),
            ElevatedButton(onPressed: (){
              writedata();
              print('success');
            },
             child: const Text("write data")),
             ElevatedButton(onPressed: (){
              readdata();
             }, child: const Text("Read data")),
              ElevatedButton(onPressed: (){
                updatedata();
              }, child: const Text("update data")),
               ElevatedButton(onPressed: (){
                deletedata();
               }, child: const Text("delete data"))



          ],
        ),

      ),
    );
  }
  void writedata()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'logo tech');


  }
  void readdata()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    final String? action = prefs.getString('name');
    setState(() {
      localstorage=action!;
    });
  }
  void updatedata()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString('name', 'logo info tech');
  }
  void deletedata()async{
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove('name');
    setState(() {
      localstorage='flutter';
    });

  }
}