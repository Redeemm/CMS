import 'dart:async';

import 'package:flutter/material.dart';
import 'package:login/change_passward.dart';
import 'package:login/complaint_history.dart';
import 'package:login/completed_complaint.dart';
import 'package:login/dashboard.dart';
import 'package:login/inprogress_complaint.dart';
import 'package:login/makecomplaint.dart';
import 'package:login/pending_information.dart';
import 'package:login/personalinfo.dart';

class drawer extends StatefulWidget {
  const drawer({ Key? key }) : super(key: key);

  @override
  State<drawer> createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
  return Scaffold(  
      appBar: AppBar(
        centerTitle: true,
    title: Text("Complaint Management System"),
    flexibleSpace: Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
          colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
    ),
       ),
backgroundColor: const Color.fromARGB(255, 204, 233, 230),
        body:Container(
        child:SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           const Padding(padding: EdgeInsets.fromLTRB(30, 110, 30, 0),
            child: Text(
"> Dashboard Options",
style: TextStyle(color: Color.fromARGB(255, 255, 254, 254),
fontSize: 24.0,
fontWeight: FontWeight.bold),
textAlign: TextAlign.start,
            ),),
            Padding(padding: const EdgeInsets.fromLTRB(30, 40, 30, 0),
            child: Center(
              child: Wrap(
                spacing: 20.0,
                runSpacing: 20.0,
                children: [
SizedBox(
  width: 140.0,
  height: 170.0,
  child: Card(
    color: const Color.fromARGB(255, 233, 241, 245),
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0)
    ),
    child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
    child: Column(
      children: [
        Image.asset("assets/google-docs (2).png", width: 69.0),
        SizedBox(height: 10.0),
        const Text("Pending Complaint", style: TextStyle(
          color: Color.fromARGB(255, 26, 25, 25),
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),),
        SizedBox(height: 3.0),
        Text(" 0 items", style: TextStyle(
       color: Color.fromARGB(255, 82, 200, 216),
        fontWeight: FontWeight.w100),)
      ],
    ),)),
  ),
  
),
SizedBox(
  width: 140.0,
  height: 170.0,
  child: Card(
      color: Color.fromARGB(255, 233, 241, 245),
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0)
    ),
   child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
    child: Column(
      children: [
        Image.asset("assets/google-docs (2).png", width: 64.0),
        SizedBox(height: 10.0),
        Text("In-progress complaint", style: TextStyle(
          color: Color.fromARGB(255, 26, 25, 25),
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),),
        SizedBox(height: 1.0),
        Text(" 1 items", style: TextStyle(
        color: Color.fromARGB(255, 82, 200, 216),
        fontWeight: FontWeight.w100),)
      ],
    ),)),
  ),
  
),
SizedBox(
  width: 140.0,
  height: 170.0,
  child: Card(
     color: Color.fromARGB(255, 233, 241, 245),
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0)
    ),
  child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
    child: Column(
      children: [
        Image.asset("assets/google-docs (2).png", width: 64.0),
        SizedBox(height: 10.0),
        Text("Completed Complaint", style: TextStyle(
          color: Color.fromARGB(255, 26, 25, 25),
          fontWeight: FontWeight.bold,
          fontSize: 13.0,
        ),),
        SizedBox(height: 1.0),
        Text(" 2 items", style: TextStyle(
        color: Color.fromARGB(255, 82, 200, 216),
        fontWeight: FontWeight.w100),)
      ],
    ),)),
  ),
  
),
                ],
              ),
            ),
            ),

          ],
        ),
        ),
        ),
      
      drawer: Drawer(  
        child: ListView(  
          // Important: Remove any padding from the ListView.  
          padding: EdgeInsets.zero,  
          children: <Widget>[  
            UserAccountsDrawerHeader(  
              accountName: Text("Heerfab5"),  
              accountEmail: Text("irsatanoli2000@gmail.com"),  
              currentAccountPicture: CircleAvatar(  
                radius: 40.0,
              backgroundImage: 
              NetworkImage('https://media.istockphoto.com/photos/hot-air-balloons-flying-over-the-botan-canyon-in-turkey-picture-id1297349747?s=612x612'),
              
              
            ),
            ),  
            ListTile(  
              leading: Icon(Icons.dashboard), title: Text("Dashboard"),  
              onTap: () {      var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  dashboard()),
  );  
                  
              },  
            ), 
             Divider(
            height: 30,
  indent: 20,
  endIndent: 20,
            color: Color.fromARGB(255, 194, 185, 185),
          ), 
            
            ListTile(  
              leading: Icon(Icons.file_copy_outlined), title: Text("Make Complaint"),  
              onTap: () {   var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const makecomplaint()),
  );    
              },  
            ),  
             ListTile(  
              leading: Icon(Icons.check_box), title: Text("Completed"),  
              onTap: () { var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) =>  MyApp()),
  );    
              
              },  
            ),  
             ListTile(  
              leading: Icon(Icons.chat_bubble),title: Text("Inprogress"),  
              onTap: () {  
                var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const inprogress_complaint()),
  );   
              },  
            ),
            ListTile(  
              leading: Icon(Icons.pending_actions), title: Text("pending"),  
              onTap: () {  
                var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const pending_information()),
  );     
              },  
            ), 
             ListTile(  
              leading: Icon(Icons.history), title: Text("Complaint History"),  
              onTap: () {  
                var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const complaint_history()),
  );     
              },  
            ),       
              Divider(
            height: 30,
  indent: 20,
  endIndent: 20,
            color: Color.fromARGB(255, 194, 185, 185),
          ), 
            ListTile(  
              leading: Icon(Icons.contacts), title: Text("Edit info"),  
              onTap: () {  var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const personalinfo()),
  );  
              },  
            ),
              Divider(
            height: 30,
  indent: 20,
  endIndent: 20,
            color: Color.fromARGB(255, 194, 185, 185),
          ), 
            ListTile(  
              leading: Icon(Icons.password_sharp),title: Text("Change Passward"),  
              onTap: () {  var push = Navigator.push(
    context,
    MaterialPageRoute(builder: (context) => const change_Passward()),
  );  
                 
              },  
            ),    
          ],  
        ),  
      ),  
    );  
  }  
}  