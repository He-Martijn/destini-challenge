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

                  )),

            ],
          ),
        ),
      ),
    );
  }
}


//TODO: Step 29 - Run the app and test it against the Story Outline to make sure you've completed all the steps. The code for the completed app can be found here: https://github.com/londonappbrewery/destini-challenge-completed/

/*Expanded(
                flex: 2,
                child: FlatButton(
                  onPressed: () {
                    print('Button \'choice 1\' pressed.');
                    //Choice 1 made by user.
                  },
                  color: Colors.red,
                  child: Text(

                    'Choice 1',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),*/

/*Expanded(
                flex: 2,

                //TODO: Step 28 - Set the "visible" property of the Visibility Widget to equal the output from the buttonShouldBeVisible() method in the storyBrain.
                child: FlatButton(
                  onPressed: () {
                    print('Button \'choice 2\' pressed.');
                    //Choice 2 made by user.
                  },
                  color: Colors.blue,
                  child: Text(

                    'Choice 2',
                    style: TextStyle(
                      fontSize: 20.0,
                    ),
                  ),
                ),
              ),*/


