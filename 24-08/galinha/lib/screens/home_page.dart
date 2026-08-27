import 'package:flutter/material.dart';
import 'package:galinha/screens/paradox_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Granja GraciOvos')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 10,
        children: [
          SizedBox(
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
          SizedBox(
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
          SizedBox(height: 20),
          SizedBox(
            height: 100,
            width: 300,
            child: TextButton(
              style: ButtonStyle(
                backgroundColor: WidgetStatePropertyAll(Colors.yellow),
              ),

              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const ParadoxPage(),
                  ),
                );
              },
              child: Text('Ir para Inputs', style: TextStyle(fontSize: 46)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  ),

                  onPressed: () {
                    print('CLIQUEI');
                  },
                  child: Text('Butão', style: TextStyle(fontSize: 38)),
                ),
              ),
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  ),

                  onPressed: () {
                    print('CLIQUEI');
                  },
                  child: Text('Butão', style: TextStyle(fontSize: 38)),
                ),
              ),
            ],
          ),
          Stack(
            alignment: AlignmentGeometry.bottomRight,
            children: [
              SizedBox(
                height: 50,
                width: 150,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.yellow),
                  ),

                  onPressed: () {
                    print('CLIQUEI');
                  },
                  child: Text('Butão', style: TextStyle(fontSize: 38)),
                ),
              ),
              SizedBox(
                height: 50,
                width: 100,
                child: TextButton(
                  style: ButtonStyle(
                    backgroundColor: WidgetStatePropertyAll(Colors.red),
                  ),

                  onPressed: () {
                    print('CLIQUEI');
                  },
                  child: Text('Butão', style: TextStyle(fontSize: 38)),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
