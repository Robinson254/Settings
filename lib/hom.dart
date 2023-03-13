// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
class Homep extends StatelessWidget {
  const Homep({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 177, 201, 97),
        leading: Icon(Icons.more_vert),
        title: Text("Stack",
        style: TextStyle(
          fontSize:25.0,
          fontWeight: FontWeight.bold 
          ),
          ),
          actions: [
               Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                     Icon(Icons.search,color: Colors.grey,),
                  Stack(
                    children: [
                      Icon(
                        Icons.notifications,
                        color: Colors.grey,
                        size: 30.0,
                        ),
                        Positioned(
                          top:6.0 ,
                          right: 2.0,
                          child: CircleAvatar(
                            radius: 5.0,
                            backgroundColor: Colors.green,
                          ),
                          ),
                    ],
                  ),
                ],
              ),
            
         
          ],
      ),
      body: Center(
        child:Text("Coding,style with RobinTech"),
      ),
      // Column(
      //   children: [
      //         Stack(
      //           children:[
      //               Icon(
      //                     Icons.notifications,
      //                         size:50.0,
      //                         color:Colors.grey,
      //                   ),
      //                   Positioned(
      //                     top:5.0,
      //                     right: 2.0,
      //                     child:CircleAvatar(
      //                       radius: 10.0,
      //                       backgroundColor: Colors.green,
      //                     )
      //                      ),
      //                 ]
      //           )
      //          ],
      // ),
    );
  }
}
