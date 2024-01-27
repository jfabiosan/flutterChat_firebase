import 'package:flutter/material.dart';
import 'choose_chat_room_screen.dart';

class CreateUserScreen extends StatelessWidget {
  final TextEditingController _nicknameController = TextEditingController();

  CreateUserScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Usuário'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              controller: _nicknameController,
              decoration: const InputDecoration(
                hintText: 'Digite seu nickname',
              ),
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                // Aqui você pode salvar o nickname ou fazer outras ações necessárias
                // Exemplo simples: Navegar para a tela de escolha de sala de chat
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => ChooseChatRoomScreen(
                            userName: _nicknameController.text,
                          )),
                );
              },
              child: const Text('Criar Usuário'),
            ),
          ],
        ),
      ),
    );
  }
}
