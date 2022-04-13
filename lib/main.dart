import 'package:flutter/material.dart';
import 'story_brain.dart';


void main() {
  print('void main is called');
  runApp(Destini());
}

class Destini extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: StoryPage(),
    );
  }
}



var storyBrain = StoryBrain();

class StoryPage extends StatefulWidget {
  _StoryPageState createState() => _StoryPageState();
}

class _StoryPageState extends State<StoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        // NB About the image. Udemy allready added the images to pubspec.yaml
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/background.png"),
            fit: BoxFit.cover,
          ),
        ),
        padding: EdgeInsets.symmetric(vertical: 50.0, horizontal: 15.0),
        constraints: BoxConstraints.expand(),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                flex: 12,
                child: Center(
                  child: Text(
                    storyBrain.getStory(),
                    style: TextStyle(
                      fontSize: 25.0,
                    ),
                  ),
                ),
              ),
              Expanded(
                  flex: 2,
                  child: TextButton(
                    child: Container(
                      color: Colors.red,
                      child: Center(
                        child: Text(storyBrain.getChoice1(),
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),),
                      ),
                    ),
                    onPressed: (){
                      print('Button \'choice 1\' pressed.');
                      setState(() {
                        storyBrain.nextStory(choiceNumber: 1);
                      });
                    },

                  )),
              SizedBox(
                height: 20.0,
              ),
              Expanded(
                  flex: 2,
                  child: Visibility(
                    visible: storyBrain.buttonShouldBeVisible(),
                    child: TextButton(
                      child: Container(
                        color: Colors.blue,
                        child: Center(
                          child: Text(storyBrain.getChoice2(),
                            style: TextStyle(
                              fontSize: 20.0,
                              color: Colors.white,
                            ),),
                        ),
                      ),
                      onPressed: (){
                        print('Button \'choice 2\' pressed.');
                        setState(() {
                          storyBrain.nextStory(choiceNumber: 2);
                        });

                      },

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



