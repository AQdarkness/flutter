import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
      body: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 500,height: 700,decoration: BoxDecoration(color: Color.fromARGB(255, 221, 52, 202),borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.all(50),
                  child:CircleAvatar(backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),)
                  ),
                ]),
              ),
            ],
          ),
        ),      
      ),
    );
  }
}