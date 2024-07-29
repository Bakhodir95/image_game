import 'package:flutter/material.dart';

import 'package:image_game/ui/home_screen.dart';

class InitialScreen extends StatefulWidget {
  const InitialScreen({super.key});

  @override
  State<InitialScreen> createState() => _InitialScreenState();
}

class _InitialScreenState extends State<InitialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/puzzle.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "4 Pictures 1 Word",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            width: 60,
                            height: 60,
                            child: Image.asset(
                              'images/image1.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'images/image2.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(10),
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'images/image3.png',
                              fit: BoxFit.cover,
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(20),
                        child: Container(
                            width: 100,
                            height: 100,
                            child: Image.asset(
                              'images/image4.png',
                              fit: BoxFit.contain,
                            )),
                      ),
                    ],
                  ),
                ),
                const Spacer(),
                FilledButton(
                    style: const ButtonStyle(
                        padding: WidgetStatePropertyAll(EdgeInsets.all(20))),
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (ctx) => HomePage()));
                    },
                    child: const Text(
                      "Let's go",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
