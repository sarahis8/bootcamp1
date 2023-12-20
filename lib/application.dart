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
        backgroundColor: Colors.amberAccent,

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


      body:Container(
        height: height,
        width: width,
        color: Colors.white,

        child: Column(

          children: [
            SizedBox(height: height*0.05,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                backgroundImage:AssetImage('images/download.png'),
                  radius: 60,


                ),
                SizedBox(width: 10,),


                Column(
                 children: const [
                   Text("SARAH ISSA ",
                   style: TextStyle(color: Colors.black, fontSize: 30),
                   ),
                   Text(" flutter course",
                     style: TextStyle(color: Colors.black),
                       )
                 ],

                )


              ],


            ),

            // const Padding(
            //   padding: EdgeInsets.symmetric(horizontal: 50),
            //   child:
              Divider(

                height: 80,
                color: Colors.black,
                thickness: 1,
               indent: width * 0.1,
                endIndent:width * 0.1 ,
              ),
            // ),


             Padding(
              padding: EdgeInsets.symmetric(horizontal: width *0.05),
              child: const Text("ParagraphParagraphParagraphParagraphParagraphParagraph"
                  "ParagraphParagraphParagraphParagraphParagraph",

              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
              ),

                textAlign: TextAlign.center,
              ),
            )

          ],

        ),
      ),
    );

  }

}