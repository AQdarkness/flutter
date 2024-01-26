import 'package:flutter/material.dart';

class housepage extends StatelessWidget {
  const housepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
          child:Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(width: 400,height: 600,decoration: BoxDecoration(color: Color.fromARGB(255, 221, 52, 202),borderRadius: BorderRadius.circular(20)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                  margin: EdgeInsets.all(25),
                  child:CircleAvatar(backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png'),)
                  ),
                  Container(child:Text('Hello Test',style: TextStyle(),),),
                ]),
              ),
            ],
          ),
      ),
    );
  }
}