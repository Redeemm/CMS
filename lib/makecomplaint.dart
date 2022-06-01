import 'dart:io';

import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'package:login/file_list.dart';
import 'package:open_file/open_file.dart';

class makecomplaint extends StatefulWidget {
  const makecomplaint({ Key? key }) : super(key: key);

  @override
  State<makecomplaint> createState() => _makecomplaintState();
}

class _makecomplaintState extends State<makecomplaint> {
  FilePickerResult? result;
  PlatformFile? file;
  // var _currencies = [
  //   "Food",
  //   "Transport",
  //   "Personal",
  //   "Shopping",
  //   "Medical",
  //   "Rent",
  //   "Movie",
  //   "Salary"
  // ];
  // var _currentSelectedValue = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Color.fromARGB(209, 255, 245, 245)),
          onPressed: () => Navigator.of(context).pop(),

        ),
        centerTitle: true,
        title: Text("Make Complaint"),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: <Color>[Color.fromARGB(226, 42, 123, 189), Colors.blue])),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 5, 30, 0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [


                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  new Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: new TextField(
                        style:
                        TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                        decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Categories",
                          hintText: "Enter Your Categories",
                        ),

                      ),
                    ),
                  ),

                  new Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: new TextField(
                        style:
                        TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                        decoration: InputDecoration(

                          border: OutlineInputBorder(),
                          labelText: "Sub Categories",
                          hintText: "Plz Enter a Sub-Catergories",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  ],
                ),
              ),

              TextField(
                style:
                TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: "Nature of Complaint",
                  hintText: "Regarding to...",
                ),
              ),


              Padding(

                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  ],
                ),
              ),

              TextField(
                style:
                TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: "Description",
                  hintText: "Feel free to write. Your complaint is secure.",
                  contentPadding: EdgeInsets.symmetric(vertical: 50),
                ),
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  ],
                ),
              ),

              TextField(
                style:
                TextStyle(color: Color.fromARGB(255, 19, 18, 18)),
                decoration: InputDecoration(

                  border: OutlineInputBorder(),
                  labelText: "Regarding File",
                  hintText: "Regarding to...",

                ),
              ),
              Padding(

                padding: const EdgeInsets.fromLTRB(20, 5, 20, 0),
                child: Row(

                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                  ],
                ),
              ),
              ElevatedButton(onPressed: (){
                pickFiles();
              }, child: Text('Pick File')),
            ]
        ),
      ),
    );
  }

  void pickFiles() async {
    result = await FilePicker.platform.pickFiles(allowMultiple: true);
    if(result == null) return;

    loadSelectedFile(result!.files);
  }
  void loadSelectedFile(List<PlatformFile> files) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>
        FileList(files: files, onOpenedFile: viewFile)));
  }

  void viewFile(PlatformFile file){

    //OpenFile.open(file.path);
  }}
