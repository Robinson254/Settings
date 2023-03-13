
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<Settings> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {

  double sliderValue=10;  
  Color vcolor=Colors.black87;
  


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Color.fromARGB(115, 81, 78, 78),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(115, 81, 78, 78),
        leading: Icon(Icons.arrow_back),
        title: Text("HomeScreen"),
      ),
    
      body:ListView(
        children: [
          Padding(
            padding: EdgeInsets.fromLTRB(10.0, 0.0, 10.0, 0.0),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150.0,
                decoration: BoxDecoration(
                   color:  Color.fromARGB(255, 62, 58, 58),
                   borderRadius: BorderRadius.circular(30.0),
                ),
                child: Center(child: Text("Welcome to GB whatsapp where messages are end to end encrypted to ensure privacy while on use. ",style: TextStyle(color: Color.fromARGB(255, 155, 148, 148),fontWeight: FontWeight.bold,fontSize: sliderValue,),)),
              ),
            ),
          ),
         
          SingleChildScrollView(
            child: Container(
             // height: 500.0,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 62, 58, 58),
                borderRadius: BorderRadius.circular(30.0),
              ),
              child: Column(
                children: [
                  Column(
                    children: [
                      Align(
                        alignment: Alignment.topLeft,
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("MODS"),
                        )),
                    ],
                  ),
                 ListTile(
                  title: Text('Photo Corners',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("0:Square-100:Round"),
                  trailing: Text("100r"),
                 ),
                 Slider(
                  value: sliderValue,
                  min: 0.0,
                  max: 20.0,
                 activeColor: Colors.green,
                 inactiveColor: Color.fromARGB(221, 52, 47, 47),
                  onChanged:(value){
                     
                     setState(() {
                       sliderValue=value;
                     });

                  },
                   ),
                   Divider(
                    color: Colors.black,
                   ),
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Comfirm before sending a state",style: TextStyle(color: Colors.white,fontSize: 15.0),),
                      Switch(
                        value: true, 
                        onChanged: (_){
                          
                        },
                        activeColor: Colors.green,
                        
                        ),
                    ],
                   ),
                   Divider(
                    color: Color.fromARGB(255, 49, 45, 45),
                   ),
                     ListTile(
                  title: Text('Viewed Story Toast',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Know immediately when anyone views your status by toast message",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: true,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                      ListTile(
                  title: Text('Hide Chats Divider',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Removes grey line between chats in Main Screen",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: true,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                     ListTile(
                  title: Text('Disable Contact Online Toast',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Its Enabled",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: true,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                     ListTile(
                  title: Text('Ringtone Contact Toast',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Ringtone to play when contact goes online",style: TextStyle(color: vcolor,),),
                    ),
                 Divider(
                  color: Colors.black,
                 ),
                 Align(
                  alignment: Alignment.centerLeft,
                   child: Text(
                      "Forward Settings",
                      style: TextStyle(
                        color: Colors.green
                      ),
                      textAlign: TextAlign.left,
                    ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                     ListTile(
                  title: Text('Frequently contacted',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Hide Frequently Contacted from Forward section",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: false,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                     ListTile(
                  title: Text('Hide Other Contacts',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Hide Other contacts from Forward section",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: false,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 Divider(
                  color: Colors.black,
                 ),
                     ListTile(
                  title: Text('Recents',style: TextStyle(color: Colors.white,),),
                  subtitle: Text("Hide Recent contacts from Forward section",style: TextStyle(color: vcolor,),),
                  trailing: Switch(
                    value: false,
                    activeColor: Colors.green,
                     onChanged: (_){},
                     ),
                 ),
                 
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}