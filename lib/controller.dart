import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Registrationpage(),
  ));
}

class Register extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Registration page',
      theme:ThemeData(
        primarySwatch: Colors.purple,
      ) ,
      home: Registrationpage(),
    );
  }
}

class Registrationpage extends StatefulWidget {

  @override
  State<Registrationpage> createState() => _RegistrationpageState();
}

class _RegistrationpageState extends State<Registrationpage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _password = TextEditingController();
  final TextEditingController _confirmpassword = TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Register here.."),),
      body: Padding(padding: EdgeInsets.all(16.0),
      child: Column(
        children: [
          TextField(
            controller: _nameController,
            decoration: InputDecoration(
              labelText: "Name",
              prefixIcon: Icon(Icons.person),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0,),
          TextField(
            controller: _emailController,
            decoration: InputDecoration(
              labelText: "Email",
              prefixIcon: Icon(Icons.mail_outline),
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 16.0,),

          TextField(
            controller: _password,
            decoration: InputDecoration(
              labelText: "Password",
              prefixIcon: Icon(Icons.lock),
              suffixIcon: IconButton(
                icon: Icon(_isPasswordVisible ? Icons.visibility : Icons.visibility_off),
                onPressed: (){
                  setState(() {
                    _isPasswordVisible = !_isPasswordVisible;
                  });
                },
              ),
              border:  OutlineInputBorder(),
            ),
            obscureText: !_isPasswordVisible,
          ),
          SizedBox(height: 16.0,),

          TextField(
            controller: _confirmpassword,
            decoration: InputDecoration(
                labelText: "confirm password",
                prefixIcon: Icon(Icons.lock_outline_rounded),
                suffixIcon: IconButton(
                  icon: Icon(_isConfirmPasswordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: (){
    setState(() {
    _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
    });
    },
    ),
              border:  OutlineInputBorder(),
            ),
            obscureText: !_isConfirmPasswordVisible,
          ),
          SizedBox(height: 32.0,),
          ElevatedButton(onPressed: (){
            String name = _nameController.text;
            String email = _emailController.text;
            String password = _password.text;
            String confirmpassword=_confirmpassword.text;

            if(password==confirmpassword){
              print("user registered with Name:$name , Email :$email");
            }else{
              print("Password do not match");
            }
          },
              child: Text("Register"))
        ],
      ),
      ),
    );
  }
}