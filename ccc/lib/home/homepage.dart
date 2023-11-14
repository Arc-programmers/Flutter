import 'package:ccc/authenticate/sign_in.dart';
import 'package:flutter/material.dart';
import 'package:ccc/my_flutter_app_icons.dart';
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isPressed1 = false;
  bool isPressed2 = false;
  bool isPressed3 = false;
  bool isPressed4 = false;
  bool light =true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        title: const Text("Arc",
          textAlign: TextAlign.left,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.w400,
            fontFamily: 'Italics',
            letterSpacing: 2.0,
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      body:  Column(

        children: <Widget>[
          Container(
            padding: const EdgeInsets.all(60.00),
            margin: const EdgeInsets.all(16.00),
            child:  Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: isPressed1?Colors.black12:Colors.lightGreen,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isPressed1 = !isPressed1;
                    });
                  },
                      icon: Icon(
                        MyFlutterApp.fan,
                        size: 25,
                        color: isPressed1
                            ? Colors.grey
                            : Colors.amber[100],

                      )),),

                CircleAvatar(
                  radius: 30,
                  backgroundColor: isPressed2?Colors.black12:Colors.lightGreen,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isPressed2 = !isPressed2;
                    });
                  },
                      icon: Icon(
                        MyFlutterApp.fan,
                        size: 25,
                        color: isPressed2
                            ? Colors.grey
                            : Colors.amber[100],

                      )),)

              ],
            ),),
          Container(
              padding: const EdgeInsets.all(40.00),
              margin: const EdgeInsets.all(16.00),

              child: Transform.scale(
                  scale: 2.0,
                  child: Switch(value: light,
                      activeColor: Colors.green,
                      activeTrackColor: Colors.lightGreen,

                      onChanged: (bool value){
                        setState(() {
                          light=value;
                        });
                      }

                  ))
          ),

          Container(
            padding: const EdgeInsets.all(60.00),
            margin: const EdgeInsets.all(16.00),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children:<Widget>[
                CircleAvatar(
                  radius: 30,
                  backgroundColor: isPressed3?Colors.black12:Colors.lightGreen,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isPressed3 = !isPressed3;
                    });
                  },
                      icon: Icon(
                        Icons.lightbulb,
                        size: 25,
                        color: isPressed3
                            ? Colors.grey
                            : Colors.amber[100],

                      )),),
                CircleAvatar(
                  radius: 30,
                  backgroundColor: isPressed4?Colors.black12:Colors.lightGreen,
                  child: IconButton(onPressed: (){
                    setState(() {
                      isPressed4 = !isPressed4;
                    });
                  },
                      icon: Icon(
                        Icons.lightbulb,
                        size: 25,
                        color: isPressed4
                            ? Colors.grey
                            : Colors.amber[100],

                      )),)

              ],
            ),),




        ],

      ),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.amber,
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context)=> const SignIn()),
          );
        },
        label: const Text("sign in"),
        icon: const Icon(Icons.arrow_back, color: Colors.white,)
      ),
    );

  }
}