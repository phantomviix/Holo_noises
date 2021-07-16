import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:just_audio/just_audio.dart';


void main() {
  runApp(MyApp());
}



class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("HoloNoises"),
          backgroundColor: Colors.pinkAccent,
        ),
        body: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/Background/aqua.jpg"),
                fit: BoxFit.cover,
              ),
            ),
            child: GridView.count(
              primary: false,
              mainAxisSpacing: 18.0,
              crossAxisSpacing: 20.0,
              childAspectRatio: 1.12,
              padding: EdgeInsets.all(30),
              crossAxisCount: 2,
              children: [
               TextButton(
                   onPressed: (){
                     final noise = AudioPlayer();
                     noise.setAsset("assets/audios/Marine/ahoy.mp3");
                     noise.play();
                   },
                   child: Container(
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(30),
                       image: DecorationImage(
                         image: AssetImage("assets/images/Marine/marine.jpg"),
                         fit: BoxFit.cover,
                       ),
                     ),
                   ),
               ),
               GestureDetector(
                 onTap: () {
                    final noise = AudioPlayer();
                    noise.setAsset("assets/images/Marine/ahoy.mp3");
                    noise.play();
                 },
                 child: Container(
                   decoration: BoxDecoration(
                     borderRadius: BorderRadius.circular(30),
                     image: DecorationImage(
                       image: AssetImage("assets/images/Marine/marine.jpg"),
                       fit: BoxFit.cover,
                     ),
                   ),
                 ),
               ),
                TextButton(
                  onPressed: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Marine/marine.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
                TextButton(
                  onPressed: (){},
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.pink,
                      image: DecorationImage(
                        image: AssetImage("assets/images/Marine/marine.jpg"),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
      ),
    );
  }
}

