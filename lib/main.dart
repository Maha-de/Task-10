import 'package:flutter/material.dart';

import 'Second.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyScaffold(),
    );
  }
}
class MyScaffold extends StatefulWidget {
  const MyScaffold({super.key});

  @override
  State<MyScaffold> createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {

  final user = TextEditingController();
  final password = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text("Login"),
        ),
      ),
      body: Center(
        child: ListView(
          children: [
          SizedBox(height: 150,),
        Icon (Icons.diamond, size: 50, ),
        Text("Login", textAlign: TextAlign.center,),
        SizedBox(height: 30,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: user,
            decoration: InputDecoration(
                labelText: "Username"),),
        ),
        SizedBox(height: 10,),
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller:password,
            decoration: InputDecoration(
                labelText: "Password"),),
        ),
        SizedBox(height: 30,),
            OverflowBar(
              alignment: MainAxisAlignment.center,
              children: [
                TextButton(onPressed: (){
                  user.clear();
                  password.clear();
                  }, child: Text("CANCEL")),
                ElevatedButton(onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>
                  MySecondScreen()));
                  }, child: Text("NEXT"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
