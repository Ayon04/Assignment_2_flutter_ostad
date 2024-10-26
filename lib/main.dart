import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Application',
      home: Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          titleTextStyle: TextStyle(fontSize: 40),
          title: Text('Home'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.lightGreenAccent,
                  padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  textStyle: TextStyle(fontSize: 20),
                ),
                onPressed: () {
                  print('Thank you');
                },
                child: Text('Click'),
              ),
              SizedBox(height: 20), // Adds some spacing between buttons
              TextButton(
                onPressed: () {
                  print('Text button clicked');
                },
                child: Text('Tap here',style: TextStyle(

                  fontSize: 30,
                ),),
              ),

              IconButton(onPressed: (){

                print('Iconnn button clicked');

              }, icon: Icon(Icons.add)),

              OutlinedButton(onPressed: (){


                print('Outline button clicked');


              },


                  child:Text('click'))
            ],
          ),
        ),
      ),
    );
  }
}
