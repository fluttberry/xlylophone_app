import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  AudioPlayer player = AudioPlayer();
  Widget soundTile({Color? tileColor, String? tileName, String? notaNumber}) {
    return Expanded(
      child: Container(
        // height: 100,
        color: tileColor,
        child: TextButton(
          onPressed: () {
            player.play(
              AssetSource('notes/note_$notaNumber.wav'),
            );
          },
          child: Text(
            "$tileName",
            style: const TextStyle(color: Colors.black),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'Flutter Xylophone',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          soundTile(
            tileColor: Colors.red,
            tileName: 'Do',
            notaNumber: '1',
          ),
          soundTile(tileColor: Colors.orange, tileName: 'Re', notaNumber: '2'),
          soundTile(tileColor: Colors.yellow, tileName: 'Mi', notaNumber: '3'),
          soundTile(tileColor: Colors.green, tileName: 'Fa', notaNumber: '4'),
          soundTile(tileColor: Colors.teal, tileName: 'So', notaNumber: '5'),
          soundTile(tileColor: Colors.blue, tileName: 'lia', notaNumber: '6'),
          soundTile(tileColor: Colors.purple, tileName: 'Si', notaNumber: '7'),
        ],
      ),
    );
  }
}
