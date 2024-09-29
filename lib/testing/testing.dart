import 'package:auxzon/core/functions/audio_player.dart';
import 'package:auxzon/main.dart';
import 'package:flutter/material.dart';

class Testing extends StatelessWidget {
  const Testing({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Get Started'),
      ),
      body: Column(
        children: [
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Play audio when button is pressed
                _playAudio('assets/audio.mp3');
              },
              child: const Text('Play Audio'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Play audio when button is pressed
                _playAudio('assets/counter.mp3');
              },
              child: const Text('Play Audio'),
            ),
          ),
          Center(
            child: ElevatedButton(
              onPressed: () {
                // Play audio when button is pressed
                _playAudio('assets/added to cart.mp3');
              },
              child: const Text('Play Audio'),
            ),
          ),
        ],
      ),
    );
  }

  void _playAudio(String assetPath) async {
    try {
      // Cast the audioHandler to AudioPlayerHandler to access the custom method
      (audioServiceSingleton.audioHandler as AudioPlayerHandler)
          .playAudioFromAsset(assetPath);
    } catch (e) {
      print("Error playing audio: $e");
    }
  }
}

