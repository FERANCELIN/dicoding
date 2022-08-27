import 'package:flutter/material.dart';
import 'package:toma_bird_dicoding_project/story_data.dart';

StoryData storyData = StoryData();
int firstBreakPoint = 900;
int secondBreakPoint = 1300;

double secondScreenPadding = 65.0;
double secondScreenMediumPadding = 100.0;
double secondScreenWidePadding = 250.0;

class MainSecondScreen extends StatelessWidget {
  const MainSecondScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > secondBreakPoint) {
          return const SecondScreenWide();
        } else if (constraints.maxWidth > firstBreakPoint) {
          return const SecondScreenMedium();
        } else {
          return const SecondScreen();
        }
      }),
    );
  }
}

// Mobile First Design
class SecondScreen extends StatefulWidget {
  const SecondScreen({Key? key}) : super(key: key);

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/bird2.png"),
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
                flex: 9,
                child: Center(
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: secondScreenPadding, left: secondScreenPadding),
                    child: SingleChildScrollView(
                      child: Text(
                        storyData.getStory(),
                        style: const TextStyle(
                          color: Colors.white,
                          fontFamily: "Poppins",
                          fontSize: 17.0,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 15),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      right: secondScreenPadding, left: secondScreenPadding),
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
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyData.buttonShouldBeVisible(),
                  child: Padding(
                    padding: EdgeInsets.only(
                        right: secondScreenPadding, left: secondScreenPadding),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// >= 800
class SecondScreenMedium extends StatefulWidget {
  const SecondScreenMedium({Key? key}) : super(key: key);

  @override
  State<SecondScreenMedium> createState() => _SecondScreenMediumState();
}

class _SecondScreenMediumState extends State<SecondScreenMedium> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/plant.png"),
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
                flex: 9,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: secondScreenMediumPadding,
                            right: secondScreenMediumPadding),
                        child: Text(
                          storyData.getStory(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: secondScreenMediumPadding,
                      right: secondScreenMediumPadding),
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
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyData.buttonShouldBeVisible(),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: secondScreenMediumPadding,
                        right: secondScreenMediumPadding),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// >= 1100
class SecondScreenWide extends StatefulWidget {
  const SecondScreenWide({Key? key}) : super(key: key);

  @override
  State<SecondScreenWide> createState() => _SecondScreenWideState();
}

class _SecondScreenWideState extends State<SecondScreenWide> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: Container(
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
                flex: 9,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(17.0),
                    child: SingleChildScrollView(
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: secondScreenWidePadding,
                            right: secondScreenWidePadding),
                        child: Text(
                          storyData.getStory(),
                          style: const TextStyle(
                            color: Colors.white,
                            fontFamily: "Poppins",
                            fontSize: 17.0,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: EdgeInsets.only(
                      left: secondScreenWidePadding,
                      right: secondScreenWidePadding),
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
              ),
              const SizedBox(
                height: 10.0,
              ),
              Expanded(
                flex: 2,
                child: Visibility(
                  visible: storyData.buttonShouldBeVisible(),
                  child: Padding(
                    padding: EdgeInsets.only(
                        left: secondScreenWidePadding,
                        right: secondScreenWidePadding),
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
