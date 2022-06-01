import 'package:flutter/material.dart';

class dashboard extends StatelessWidget {
  const dashboard({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
 const title = 'Grid List';

   return MaterialApp(  
      home: Scaffold(  
       backgroundColor: Color.fromARGB(255, 204, 233, 230),
        body:Container(
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/phyzick150600103.jpg"),
          fit: BoxFit.cover,
          ),
          ),
        child:SafeArea(child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            
           Padding(padding: const EdgeInsets.fromLTRB(30, 110, 30, 0),
            child: Text(
"> Dashboard Options",
style: TextStyle(color: Color.fromARGB(255, 255, 249, 249),
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
    color: Color.fromARGB(255, 233, 241, 245),
    elevation: 2.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(8.0)
    ),
    child: Center(child: Padding(padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
    child: Column(
      children: [
        Image.asset("assets/google-docs (2).png", width: 69.0),
        SizedBox(height: 10.0),
        Text("Pending Complaint", style: TextStyle(
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
      ),
      );
  }
}
