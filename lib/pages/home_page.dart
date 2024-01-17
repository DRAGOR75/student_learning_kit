import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/background_image.dart';
import 'package:student_learning_kit/pages/books_page.dart';
import 'package:student_learning_kit/pages/quiz_page.dart';
import 'package:websafe_svg/websafe_svg.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final user =FirebaseAuth.instance.currentUser;

  //sign user out methord
  void signUserOut(){
    FirebaseAuth.instance.signOut();

  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        BackgroundImage(),
        MaterialApp(
          debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.deepPurple,
          appBar: AppBar(
            backgroundColor: Colors.yellow,
            title: Image.asset('assets/images/Learn It.png',
            fit: BoxFit.scaleDown,
            scale: 3,),

            actions: [

              IconButton(
                icon: Icon(Icons.logout),
                onPressed: () {
                  signUserOut();
                },
              ),
            ],
          ),

          body: Stack(
            children:[
              WebsafeSvg.asset('assets/images/Untitled-design.svg',
              fit: BoxFit.fill,
              colorFilter: ColorFilter.mode(Colors.purple, BlendMode.hardLight)),
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'WELCOME USER!!!',
                    style: TextStyle(fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
                  ),
                ),

                const SizedBox(height: 120),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 6,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 16,
                    padding: EdgeInsets.all(16),
                    children: [
                      _buildCard(context, 'Books', Icons.people, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const BooksPage()));
                      }),
                      _buildCard(context, 'Notes', Icons.school, onPressed: () {}),
                      _buildCard(context, 'Quiz', Icons.class_, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const QuizPage()));
                      }),
                      _buildCard(context, 'QP', Icons.check_circle,
                          onPressed: () {}),
                      _buildCard(context, 'FAQ', Icons.assignment,
                          onPressed: () {}),
                      _buildCard(context, 'Reports', Icons.bar_chart,
                          onPressed: () {}),
                    ],
                  ),
                ),
              ],
            ),
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
    );
  }
}

