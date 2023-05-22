import 'package:flutter/material.dart';
import 'package:loginform/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';


class Homepage extends StatelessWidget{
  Homepage({Key? key}) : super(key: key);

  final User? user = Auth().currentUser;

  Future<void> signOut() async{
    await Auth().signOut();
  }

  Widget signOutButton(){
    return ElevatedButton(onPressed: signOut, child: const Text("Sign out"));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
      ),
      body: Column(
        children: [
          signOutButton(),
      ],)
    );

  }
}

