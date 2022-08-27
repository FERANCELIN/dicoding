import 'package:flutter/material.dart';

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
          child: Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                const SizedBox(height: 150.0),
                const Padding(
                  padding: EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Text(
                    "TOMA",
                    style: TextStyle(
                      height: 1,
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Bebas_Neue",
                      fontSize: 50,
                      letterSpacing: 19,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                const SizedBox(height: 300.0),
                Padding(
                  padding: const EdgeInsets.only(left: 57.0, right: 57.0),
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      side: const BorderSide(color: Colors.transparent),
                    ),
                    onPressed: () {
                      Navigator.pushNamed(context, "/second");
                    },
                    child: const Text(
                      "Mulai",
                      style: TextStyle(
                          fontFamily: "GreatVibes",
                          fontSize: 31.0,
                          color: Colors.white60),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
