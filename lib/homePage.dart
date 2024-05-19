import 'package:flutter/material.dart';
import 'package:practice/photoHero.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hero Animation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: PhotoHero(
              width: 300.0,
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute<void>(builder: (context) {
                  return Scaffold(
                    appBar: AppBar(
                      title: const Text('Flippers Page'),
                    ),
                    body: Container(
                      padding: const EdgeInsets.all(16),
                      alignment: Alignment.topLeft,
                      child: PhotoHero(
                        width: 150.0,
                        onTap: () {
                          Navigator.of(context).pop();
                        },
                      ),
                    ),
                  );
                }));
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Padding(
            padding: EdgeInsets.all(0.8),
            child: Text(
              "Animation Concept",
              style: TextStyle(color: Colors.white, fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
