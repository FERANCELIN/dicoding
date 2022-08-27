import 'package:flutter/material.dart';

class MainFirstScreen extends StatelessWidget {
  const MainFirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth >= 100) {
          return const FirstScreenWide();
        } else {
          return const FirstScreen();
        }
      }),
    );
  }
}

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/bird.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 150),
              const Center(
                child: Text(
                  "TOMA",
                  style: TextStyle(
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bebas_Neue",
                    fontSize: 50,
                    letterSpacing: 19,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Si Burung Langka",
                  style: TextStyle(
                    height: 1,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GreatVibes",
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 350),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text(
                  "Mulai Cerita",
                  style: TextStyle(
                      fontFamily: "GreatVibes",
                      fontSize: 31.0,
                      color: Colors.blueGrey),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class FirstScreenWide extends StatelessWidget {
  const FirstScreenWide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage("images/bird2.png"),
          ),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              const SizedBox(height: 150),
              const Center(
                child: Text(
                  "TOMA",
                  style: TextStyle(
                    height: 1,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: "Bebas_Neue",
                    fontSize: 50,
                    letterSpacing: 19,
                  ),
                ),
              ),
              const Center(
                child: Text(
                  "Si Burung Langka",
                  style: TextStyle(
                    height: 1,
                    color: Colors.white70,
                    fontWeight: FontWeight.bold,
                    fontFamily: "GreatVibes",
                    fontSize: 17,
                  ),
                ),
              ),
              const SizedBox(height: 550),
              OutlinedButton(
                style: OutlinedButton.styleFrom(
                  side: const BorderSide(color: Colors.transparent),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, "/second");
                },
                child: const Text(
                  "Mulai Cerita",
                  style: TextStyle(
                      fontFamily: "GreatVibes",
                      fontSize: 31.0,
                      color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
