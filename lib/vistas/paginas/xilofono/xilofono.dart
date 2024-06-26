import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

class AudioPlayerApp extends StatefulWidget {
  const AudioPlayerApp({Key? key}) : super(key: key);

  @override
  _AudioPlayerAppState createState() => _AudioPlayerAppState();
}

class _AudioPlayerAppState extends State<AudioPlayerApp> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }

  Future<void> _playSound() async {
    // Asegúrate de que la ruta sea correcta aquí
    await _audioPlayer.setSource(AssetSource('assets/audio/note1.mp3'));
    await _audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Audio Player'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: _playSound,
          child: const Text('Play Sound'),
        ),
      ),
    );
  }
}

