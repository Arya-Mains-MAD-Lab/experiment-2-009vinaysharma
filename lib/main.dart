import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: LoginPage(),

    );
  }

}

class LoginPage extends StatelessWidget{
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context){
    final userController=TextEditingController();
    final passController=TextEditingController();

    return Scaffold(
      appBar:AppBar(
        title:Text("Login Page"),

      ),
          body: Padding(padding: EdgeInsets.all(15),
    child: Column(
    children: [
      TextField(
    controller: userController,
    decoration: InputDecoration(
    labelText: "Username"
    ),
    ),
    TextField(
    controller: passController,
    decoration: InputDecoration(
    labelText: "Password"
    ),
    obscureText: true,
    ),
    ElevatedButton(onPressed: (){
      if(userController.text=="admin"&&passController.text=="1234") {
        Navigator.push(context, MaterialPageRoute(builder: (_)=>HomePage()),
        );
      }
    }, child: Text("Login"))
    ],
    ),

          )
    );
  }
}

class HomePage extends StatelessWidget{
  const HomePage ({
    super.key
});


  @override
  Widget build(BuildContext context) {
  return Scaffold(
    body:Center(child: Text("login Successful"),)
  );
    // TODO: implement build
  }}