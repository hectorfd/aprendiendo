import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class Xilofono extends StatefulWidget {
  const Xilofono({super.key});

  @override
  State<Xilofono> createState() => _XilofonoState();
}

class _XilofonoState extends State<Xilofono> {
  late AudioPlayer player = AudioPlayer();
  int _currentIndex = 0; 

  @override
  void initState() {
    super.initState();
    player = AudioPlayer();
    player.setReleaseMode(ReleaseMode.stop);
    _playAudio(0);
  }

  @override
  void dispose() {
    player.dispose();
    super.dispose();
  }

  void _playAudio(int index) async {
    String audioPath = 'audio/note${index + 1}.mp3';
    await player.stop();
    await player.release();
    await player.setSource(AssetSource(audioPath));
    await player.resume();

    setState(() {
      _currentIndex = index;
    });
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Scaffold(
  //     appBar: AppBar(
  //       title: const Text('Xilófono'),
  //     ),
  //     body: Column(
  //       mainAxisAlignment: MainAxisAlignment.center,
  //       crossAxisAlignment: CrossAxisAlignment.stretch,
  //       children: [
  //         ElevatedButton(
  //           onPressed: () => _playAudio(0),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(1),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(2),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.orange),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(3),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.red),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(4),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.purple),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(5),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.teal),
  //         ),
  //         ElevatedButton(
  //           onPressed: () => _playAudio(6),
  //           child: const Text(''),
  //           style: ElevatedButton.styleFrom(backgroundColor: Colors.yellow),
  //         ),
  //       ],
  //     ),
  //   );
  // }
  Widget buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () => _playAudio(soundNumber - 1),
        style: ElevatedButton.styleFrom(
          backgroundColor: color,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.zero,
          ),
          ),
        child: const Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Mi Chillofono xd',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.black,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildKey(color: const Color(0xFFF62585), soundNumber: 1),
          buildKey(color: const Color(0xFFB5179D), soundNumber: 2),
          buildKey(color: const Color(0xFF7209B8), soundNumber: 3),
          buildKey(color: const Color(0xFF550BAE), soundNumber: 4),
          buildKey(color: const Color(0xFF480CA7), soundNumber: 5),
          buildKey(color: const Color(0xFF3A0CA3), soundNumber: 6),
          buildKey(color: const Color(0xFF4037C9), soundNumber: 7),
        ],
      ),
    );
  }



}





