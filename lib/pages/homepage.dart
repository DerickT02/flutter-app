import 'package:flutter/material.dart';
import 'package:loginform/auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:loginform/pages/messages.dart';
import 'package:loginform/pages/posts.dart';
import 'package:loginform/pages/settings.dart';

class HomepageState extends StatefulWidget{
  const HomepageState({Key? key}) : super(key: key);

  @override
  State<HomepageState> createState() => _HomepageState();
}


class _HomepageState extends State<HomepageState>{
  

  final User? user = Auth().currentUser;

  Future<void> signOut() async{
    await Auth().signOut();
  }

  Widget signOutButton(){
    return TextButton(
      style: ButtonStyle(
        alignment: Alignment.centerLeft
      ),
      onPressed: signOut, 
      child:Row(children:[
        Icon(Icons.exit_to_app),
        SizedBox(width: 3),
        Text("Sign Out", textAlign: TextAlign.start)
        
        ]
      ));
  }

  Widget drawerButton(String text, IconData icon, Widget destination){
    return TextButton(
      style: ButtonStyle(
        alignment: Alignment.centerLeft,
        
        
      ),
      onPressed: () {
        Navigator.push(context, MaterialPageRoute(builder: (builder) => destination));
      }, 
      child:Row(children:[
        Icon(icon),
        SizedBox(width: 3),
        Text(text, textAlign: TextAlign.start)
        
        ]
      ));
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text("Homepage"),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (builder) => Messages()));
          }, 
          icon: Icon(Icons.message,)),
        ],
      ),
      body: Column(
        children: [
          const Text("Welcome"),
      ],),
      drawer: Drawer(
        child: ListView(
          children: [
            
            const Divider(height: 1, thickness: 5,),
            drawerButton("Posts", Icons.picture_in_picture, Posts()),
            const Divider(height: 1, thickness: 5,),
            drawerButton("Settings", Icons.settings, Settings()),
            signOutButton(),
          ],
        ),
      ),
    );

  }
}

