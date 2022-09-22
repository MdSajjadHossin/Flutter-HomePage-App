import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/container.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:audioplayers/audioplayers.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: size.width,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.orange,
              Colors.red,
            ],
          )),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "Let's Peee",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Text(
                "Save your self's from \n awkward situations",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
              const Image(image: AssetImage("assets/funny.png")),
              ElevatedButton(
                  onPressed: (() {
                    final player = AudioPlayer();
                    player.play(AssetSource('pee-sound.mp3'));
                  }),
                  style: ElevatedButton.styleFrom(
                      primary: Colors.orange, elevation: 5),
                  child: const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: (Text(
                        "Play",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ))))
            ],
          ),
        ),
      ),
    );
  }
}
