import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Granja GraciOvos')),
      body: Center(
        child: SizedBox(
          height: 100,
          width: 300,
          child: TextButton(
            style: ButtonStyle(
              backgroundColor: WidgetStatePropertyAll(Colors.yellow),
            ),

            onPressed: () {
              print('CLIQUEI');
            },
            child: Text('Butão', style: TextStyle(fontSize: 46)),
          ),
        ),
      ),
    );
  }
}
