import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends   StatelessWidget {
    @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.blueGrey,
        body: Column(
          //judson judson 
          children: <Widget>[
            Expanded(
            //  oljuojoijj//
              child:Row(
                //image;
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 50,width: 30,child: Image.asset('assets/left hand.jpg'),),
                  SizedBox(height: 50,width: 30,child: Image.asset('assets/music.jpg'),)
                ],
              ) ),
              Expanded(
                child:Row(
                  //text;
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Hey! ",style: TextStyle(color: Colors.white,fontSize: 40.0),),
                    Text("Welcome Judson",style: TextStyle(color: Colors.white,fontSize: 40.0),)
                  ],
                ) ),
                Expanded(
                  child:Row(
                    //text;
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Email  or  Username")
                    ],
                  ) ),
                  Expanded(
                    child: Row(
                      //text;
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Password")
                      ],
                    )),
                    Expanded(
                      child:Row(
                        //button;
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,

                        children: [
                          TextButton(onPressed: (){

                          }, child: Text("Forget password?"))
                        ],
                      ) ),
                      Expanded(
                        child:Row(
                          //text;
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            TextButton(onPressed: (){

                            }, child: Text("LOG IN >",style: TextStyle(color: Colors.white,fontSize: 20.0)))
                          ],
                        ) ),
                        Expanded(
                          child:Row(
                            //text;
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Text("or continue with")
                            ],
                          ) ),
                          Expanded(
                            child:Row(
                              //image;
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              
                              children: [
                                SizedBox(height: 50,width: 30,child: Image.asset('assets/google logo.jpg'),),
                                SizedBox(height: 50,width: 30,child: Image.asset('assets/facebook logo.jpg'),)
                              ],
                            ) ),
                            Expanded(
                              child:Row(
                                //text;
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text("Don't have an account?",style: TextStyle(color: Colors.white),),
                                  TextButton(onPressed: (){

                                  }, child: Text("LOG IN",style: TextStyle(color: Colors.blue,fontSize: 30.0),))
                                ],
                              ) )

               
          ],
          
          ),
           
      ),
    );
  }
}