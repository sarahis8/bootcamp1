import 'package:flutter/material.dart';


//stateless
//statefull for printing on the screen




void main(){
  runApp(personalinfo());
}


class personalinfo extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
        home: HomePage(),
    );
  }

}

class HomePage extends StatelessWidget{
  String title="welcome to  app";

  @override
  Widget build(BuildContext context){
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;


    //base of the app
    return Scaffold(

      //1- appBar
      appBar: AppBar(
        backgroundColor: Colors.grey,

        title:  Center(
          child:   Text(
          "$title",
            style:  TextStyle(
                color: Colors.lightBlue
            ),
          ),
        ),
      ),

//--------------------------------------------------------------

      // body: Container(
      //   color: Colors.blueGrey,
      //   child: Center(child: Text("hello"))
      // ),
      //


      // body:Column(
      //   children: [
      //     Container(),
      //     Container(),
      //     Container(),
      //
      //
      //   ],
      body:Row(
        // mainAxisAlignment: MainAxisAlignment.spaceEvenly, //up and down for column
        // crossAxisAlignment: CrossAxisAlignment.stretch, //up and down for Row
        children: [
          Container(
            height: 100,
            width: 100,
            color: Colors.blueGrey,
          ),

          SizedBox(height: 30,),
          Container(
            height: 100,
            width: 100,
            color: Colors.deepPurple,
          ),



        ],
      ),



    );

  }

}