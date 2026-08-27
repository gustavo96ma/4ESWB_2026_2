import 'package:flutter/material.dart';

class ParadoxPage extends StatelessWidget {
  ParadoxPage({super.key});

  final TextEditingController _controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        title: Text(
          'Paradoxo galináceo',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.amber,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipOval(
              child: Image.network(
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSMJlMiK8KKdba8Y0e1ioYZzm-kl8fLlIjRYJMULiEVTQ&s',
              ),
            ),
            SizedBox(height: 100),
            Text(
              'O que veio primeiro, o OVO ou a GALINHA??',
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextFormField(
                controller: _controller,
                decoration: InputDecoration(
                  label: Text('Responda aqui'),
                  icon: Icon(Icons.egg_alt_outlined),
                  focusedBorder: OutlineInputBorder(
                    gapPadding: 16,
                    borderRadius: BorderRadius.circular(18),
                  ),
                  border: OutlineInputBorder(
                    gapPadding: 16,
                    borderRadius: BorderRadius.circular(18),
                  ),
                ),
              ),
            ),
            TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.amber),
              ),
              onPressed: () => print(_controller.text),
              child: Text(
                'Enviar Resposta',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
