import 'package:flutter/material.dart';
import 'package:loginpage/loginpage.dart';

class forgetpassword extends StatelessWidget {
  const forgetpassword({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: 400,
              height: 600,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Color.fromARGB(255, 221, 52, 202),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    child: const CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/512/3135/3135715.png')),
                  ),
                  Container(
                    margin: const EdgeInsets.all(50),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.greenAccent,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 0, 230)),
                                ),
                                labelText: 'newpassword',
                                hintText: 'newPassword',
                                contentPadding: EdgeInsets.all(10),
                              ),
                              obscureText: true,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(10),
                            child: TextField(
                              decoration: InputDecoration(
                                fillColor: Colors.greenAccent,
                                filled: true,
                                border: OutlineInputBorder(
                                  borderSide: BorderSide(
                                      color: Color.fromARGB(255, 255, 0, 230)),
                                ),
                                labelText: 'repeatpassword',
                                hintText: 'repeatPassword',
                                contentPadding: EdgeInsets.all(10),
                              ),
                              obscureText: true,
                            ),
                          ),
                        ]),
                  ),
                  ElevatedButton(
                    child: Text('Done'),
                    onPressed: () {
                      Navigator.pushReplacement(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => MyApp()));
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 237, 77),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
