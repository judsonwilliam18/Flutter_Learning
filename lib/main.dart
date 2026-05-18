import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
void main()=>runApp(MyApp());
class MyApp extends  StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
    String data = 'No data';
    TextEditingController controller=TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            
            appBar: AppBar(
                
                backgroundColor: Colors.blue,
                title: Text("Storage"),
            ),
            body: Column(
                children: <Widget>[
                     TextField(
                                controller: controller,
                                decoration: InputDecoration(
                                    labelText: "Enter Text"

                                ),
                            ),
                            ElevatedButton(onPressed: (){
                                WriteData();
                            }, 
                            child: const Text("Write data"),
                            ),
                            ElevatedButton(onPressed: (){
                                ReadData();
                            }, child: const Text('ReadData')
                            ),
                            ElevatedButton(onPressed: (){
                                UpdateData();
                            }, child: const Text('UpdateData')
                            ),
                            ElevatedButton(onPressed: (){
                                DeleteData();
                            }, child: const Text('DeleteData')
                            ),
                            Text(
                                data,
                                style: TextStyle(
                                    fontSize: 30.0,
                                    color: Colors.black26
                                ),
                            )
                        
                    
                    
                    
                ],
                
            ),
        ),
    );
  }
  void WriteData() async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setString('name', controller.text);
    print("Data written");
  }
  void ReadData() async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    final String? action = prefs.getString('name');
    setState(() {
      data=action?? 'No Data';
    });
  }
  void UpdateData() async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.setString('name', controller.text);
    print("Data Updated");
  }
  void DeleteData()async{
    final SharedPreferences prefs=await SharedPreferences.getInstance();
    await prefs.remove('name');
    setState(() {
      data='No Data';
    });
    controller.clear();
    print(" Data deleted");
        
    
  }
  







}