import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  late YoutubePlayerController ytController;
  TextEditingController linkController = TextEditingController();
  TextEditingController seekController = TextEditingController();

  @override
  void initState() {
    ytController = YoutubePlayerController(
      initialVideoId: '_pJpuSnHZdY',
      flags: const YoutubePlayerFlags(
        autoPlay: true,
        mute: true,
        startAt: 50,
      ),
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 31, 31, 31),
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 2, 18, 53),
        centerTitle: true,
        leading: Icon(
          Icons.play_circle,
          color: Colors.black87,
          size: 34.0,
        ),
        title: Text(
          "Conócenos",
          style: TextStyle(
            fontSize: 23,
            color: Colors.black87,
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      body: Column(
        children: [
          Wrap(
            children: [
              YoutubePlayer(
                controller: ytController,
                showVideoProgressIndicator: true,
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  ytController.play();
                },
                child: Container(
                  height: 50,
                  width: 120,
                  color: Color.fromARGB(255, 2, 18, 53),
                  child: const Center(
                    child: Text(
                      "Play",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ytController.pause();
                },
                child: Container(
                  height: 50,
                  width: 120,
                  color: Color.fromARGB(255, 2, 18, 53),
                  child: const Center(
                    child: Text(
                      "Pause",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  ytController.toggleFullScreenMode();
                },
                child: Container(
                  height: 50,
                  width: 120,
                  color: Color.fromARGB(255, 2, 18, 53),
                  child: const Center(
                    child: Text(
                      "Full Screen",
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color(0xFFFFFFFF),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
