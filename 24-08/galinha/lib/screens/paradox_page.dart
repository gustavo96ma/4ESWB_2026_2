import 'package:flutter/material.dart';

class ParadoxPage extends StatelessWidget {
  const ParadoxPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Paradoxo galináceo')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'O que veio primeiro, o OVO ou a GALINHA??',
              style: TextStyle(fontSize: 16),
            ),
            TextFormField(),
          ],
        ),
      ),
    );
  }
}
