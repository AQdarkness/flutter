import 'package:flutter/material.dart';
import 'package:loginpage/forgetpass.dart';
import 'package:loginpage/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme:
            ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 248, 89, 235)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override//for inheriate father on everywhere in main and based project
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  String username = '', password = '';
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[Container(
            width: 400,
            height: 600,
            decoration: BoxDecoration(color: Colors.amber,borderRadius: BorderRadius.circular(20)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [Container(
                margin: const EdgeInsets.all(50),
                //padding is from inside and margin from outside space
                width: 100,
                height: 100,
                child:const CircleAvatar(
                  backgroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/512/3135/3135715.png')
                ),
              ),
                Container(width: 300,height: 50,margin:const EdgeInsets.all(5),child: TextField(
                  onChanged: ((value){
                    username=value;
                  print(username);
                  }),
                  decoration: const InputDecoration(
                    fillColor: Colors.greenAccent,border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width: 5),),
                      labelText: 'username',
                      hintText: 'Username',
                      contentPadding: EdgeInsets.all(10),
                      //make 10 pixel space for each text field
                      ),),),
                Container(width: 300,height: 50,margin: EdgeInsets.all(5),child: TextField(
                    onChanged: ((value){
                    password=value;
                  print(password);
                  }),
                  decoration: InputDecoration(
                    fillColor: Colors.greenAccent,border: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.green,width: 5),),
                      labelText: 'password',
                      hintText: 'Password',
                      contentPadding: EdgeInsets.all(10),
                      ),
                      obscureText: true,
                      ),),
                Container(child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children:[Container(
                  margin:const EdgeInsets.all(20),
                  child:ElevatedButton(
                  child: const Text('Login'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  onPressed: () {
                  if (username == 'test' && password == '123456') {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) =>
                                  housepage()));
                    }
                  },
                  ),),
                  Container(
                  margin:const EdgeInsets.all(20),
                  child:ElevatedButton(
                  child: const Text('Forget Password'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange[300],
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (BuildContext context)=>forgetpassword()));
                  },
                  ),),
                ],
                ),)
              ],
            ),
          )
          ],
        )
      ),
    );
  }
}
