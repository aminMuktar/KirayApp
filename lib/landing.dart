import 'package:flutter/material.dart';

class Landing extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            children:<Widget>[
              Column(
                  children:<Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: 200,
                          height: 200,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                                image:AssetImage('assets/images/ic_launcher.png'),
                                fit: BoxFit.cover
                            )
                          ),
                        )
                      ],
                    ),
                  ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children:<Widget> [
                  TextButton(
                    onPressed: () { },
                    child: Text("Signup", style: TextStyle(fontSize: 20,color: Colors.white) ,),
                    style: TextButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18),
                      ),
                      padding: const EdgeInsets.all(15),
                      backgroundColor: Colors.blueAccent,

                    ),
                    ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      TextButton(
                        onPressed: () { },
                          child: Text("Login", style: TextStyle(fontSize: 20) ,),)
                    ],
                  )
                ],
              )
            ]
          ),
        ),
      ),
    );
  }
  
}