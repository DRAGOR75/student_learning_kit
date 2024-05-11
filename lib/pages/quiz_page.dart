import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/background_image.dart';
import 'package:student_learning_kit/pages/home_page.dart';
import 'package:student_learning_kit/pages/quiz-screen_e.dart';
import 'package:student_learning_kit/pages/quiz_screen_maths.dart';
import 'package:student_learning_kit/pages/quiz_screen_programing.dart';
import 'package:student_learning_kit/pages/quiz_screen_s.dart';
import 'package:student_learning_kit/pages/quiz_screen_ss.dart';

class QuizHome extends StatelessWidget {
  const QuizHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        MaterialApp(
          debugShowCheckedModeBanner: false,
          home: Scaffold(
            backgroundColor: Colors.deepPurpleAccent,
            appBar: AppBar(
              backgroundColor: Colors.yellow,
              title: Image.asset('assets/images/learn_it.png',
                fit: BoxFit.scaleDown,
                scale: 3,),

              actions: [
                IconButton(
                  icon: Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  HomePage()));
                  },
                ),
              ],
            ),

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(25.0),
                  child: Text(
                    'Lets Check Your Knowledge',
                    style: TextStyle(fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),

                const SizedBox(height:28),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 16,
                    padding: EdgeInsets.all(16),
                    children: [
                      _buildCard(context, 'Maths', Icons.format_list_numbered_outlined, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizScreenM()));
                      }),
                      _buildCard(context, 'Science', Icons.science, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizScreenS()));
                      }),
                      _buildCard(context, 'Social Science', Icons.people_alt, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizScreen()));
                      }),
                      _buildCard(context, 'English', Icons.abc,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizScreenE()));
                          }),
                      _buildCard(context, 'Programming', Icons.people,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=> QuizScreenP()));
                          }),

                    ],
                  ),
                ),
                const SizedBox(height: 28),


              ],

            ),


          ),
        ),
      ],
    );
  }
  Widget _buildCard(BuildContext context, String title, IconData icon,
      {VoidCallback? onPressed}) {
    return InkWell(
      onTap: onPressed,
      child:SizedBox(
        height: 100,
        width: 200,

        child: Card(
          elevation: 4,
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: Colors.deepPurple,
              ),
              SizedBox(height: 16),
              Text(
                title,
                style: Theme.of(context).textTheme.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

