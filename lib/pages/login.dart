import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:loginform/auth.dart';

class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() =>  _LoginPageState();
}

class _LoginPageState extends State<LoginPage>{
  String? errorMessage = "";
  bool isLogin = true;

  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> signInWithEmailAndPassword() async {
    try{
      await Auth().signInWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text);

    } on FirebaseAuthException
    catch(e) {

      setState(() {
        errorMessage = e.message;
      });
    }
  }



  Future<void> createUserWithEmailAndPassword() async {
    try{
      await Auth().createUserWithEmailAndPassword(
        email: _controllerEmail.text, 
        password: _controllerPassword.text,
        );
    } on FirebaseAuthException
    catch(e){
      setState(() {
        errorMessage = e.message;
      });
    }
  }

  Widget _entryField(String title, TextEditingController controller, bool isPassword){
    return 
    SizedBox(width: 397,
    
    child: TextField(
      controller: controller,
      obscureText: isPassword == true ? true : false,
      decoration: InputDecoration(
        
        labelText: title,
      ),
    ));
  }

  Widget _errorMessage(){
    return Text(errorMessage == '' ? '' : 'Humm ? $errorMessage');
  }

  Widget _submitButton(){
    return ElevatedButton(onPressed: 
      isLogin ? signInWithEmailAndPassword : createUserWithEmailAndPassword,
    child: Text(isLogin ? "Login" : "Sign Up"));
  }

  Widget _toggleLoginAndRegister(){
    return TextButton(
      onPressed: () {
        setState(() {
          isLogin = !isLogin;
        });
      },
      child: Text(isLogin ? "Register Instead" : "Login Instead"),
    );
  }

  Widget _title(){
    return Text("Trash App");
  }
  
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: _title()
      ),
      body:
      Column(children: [
        SizedBox(height: 100,),
        _entryField("email", _controllerEmail, false),
        SizedBox(height: 5,),
        _entryField("password", _controllerPassword, true),
        Row(children: [
          _toggleLoginAndRegister(),
          SizedBox(width: 190,),
          _submitButton()
        ],
        ),
        _errorMessage(),
      ],
      
      ),
    );

  }
}