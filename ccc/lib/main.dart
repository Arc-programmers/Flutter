import 'dart:ui';

import 'package:ccc/firebase_options.dart';
import 'package:ccc/my_flutter_app_icons.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'swag',
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

bool light =true;
  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
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
                  IconButton(onPressed: (){},
                      icon:
                      const Icon(
                          MyFlutterApp.fan,
                          size: 24,

                      )),

                  IconButton(onPressed: (){},
                      icon: const Icon(
                        MyFlutterApp.fan,
                        size: 24,

                      )),

                ],
              ),),
            Container(
              padding: const EdgeInsets.all(60.00),
              margin: const EdgeInsets.all(16.00),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                    Switch(value: light,
                        onChanged: (bool value){
                      setState(() {
                        light=value;
                      });
                        }

                    )
                  ]
    )),

              Container(
              padding: const EdgeInsets.all(60.00),
              margin: const EdgeInsets.all(16.00),
              child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children:<Widget>[
                  IconButton(onPressed:(){},
                  icon: const Icon(
                    MyFlutterApp.fan,
                    size: 24,

                  ),

                  ),
                  IconButton(onPressed:(){},
                    icon: const Icon(
                    MyFlutterApp.fan,
                    size: 24,
                    )
                  )


                ],
              ),),




      ],

      ),
    );

  }
}
