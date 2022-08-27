import 'package:flutter/material.dart';
import 'package:toma_bird_dicoding_project/story_data.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

StoryData storyData = StoryData();

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/bird.png"),
          fit: BoxFit.cover,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 10.0),
      constraints: const BoxConstraints.expand(),
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Column(
                      children: const <Widget>[
                        Text(
                          "Toma",
                          style: TextStyle(
                            fontFamily: "GreatVibes",
                            fontWeight: FontWeight.bold,
                            fontSize: 27.0,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 9,
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(17.0),
                  child: SingleChildScrollView(
                    child: Text(
                      storyData.getStory(),
                      style: const TextStyle(
                        fontFamily: "Poppins",
                        fontSize: 17.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: TextButton(
                style: ButtonStyle(
                  side: MaterialStateProperty.all(
                    const BorderSide(color: Colors.black38),
                  ),
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                  ),
                ),
                onPressed: () {
                  setState(() {
                    storyData.nextStory(1);
                  });
                },
                child: Text(
                  storyData.getChoice1(),
                  style: const TextStyle(
                    fontSize: 15.0,
                    color: Colors.white,
                    fontFamily: "Poppins-Bold",
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(
              flex: 2,
              child: Visibility(
                visible: storyData.buttonShouldBeVisible(),
                child: OutlinedButton(
                  style: ButtonStyle(
                    side: MaterialStateProperty.all(
                      const BorderSide(color: Colors.black38),
                    ),
                    shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      storyData.nextStory(2);
                    });
                  },
                  child: Text(
                    storyData.getChoice2(),
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: Colors.white,
                      fontFamily: "Poppins-Bold",
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
