import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'chat_screen.dart';

class ChooseChatRoomScreen extends StatelessWidget {
  final String userName;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  ChooseChatRoomScreen({super.key, required this.userName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Escolha a Sala de Bate-papo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                _navigateToChatScreen(context, 'Sala 1');
              },
              child: const Text('Sala 1'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToChatScreen(context, 'Sala 2');
              },
              child: const Text('Sala 2'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToChatScreen(context, 'Sala 3');
              },
              child: const Text('Sala 3'),
            ),
            ElevatedButton(
              onPressed: () {
                _navigateToChatScreen(context, 'Sala 4');
              },
              child: const Text('Sala 4'),
            ),
          ],
        ),
      ),
    );
  }

  void _navigateToChatScreen(BuildContext context, String roomName) {
    _firestore.collection('chat_rooms').doc(roomName).set({
      'name': roomName,
    });
    Navigator.push(
      context,
      MaterialPageRoute(
          builder: (context) =>
              ChatScreen(roomName: roomName, userName: userName)),
    );
  }
}
