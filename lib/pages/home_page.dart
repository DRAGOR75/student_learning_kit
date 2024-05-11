import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_learning_kit/components/background_image.dart';
import 'package:student_learning_kit/navigation/books_navigate.dart';
import 'package:student_learning_kit/pages/books_page.dart';
import 'package:student_learning_kit/pages/note_homepage.dart';
import 'package:student_learning_kit/pages/quiz_page.dart';
import 'package:websafe_svg/websafe_svg.dart';

import '../navigation/question_paper_navigate.dart';

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
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: Image.asset('assets/images/learn_it.png',
            fit: BoxFit.scaleDown,
            width: 100,

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
              //WebsafeSvg.asset('assets/images/Untitled-design.svg',
              //it: BoxFit.fill,
              //colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.colorDodge)),
              Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Welcome User',
                    style: GoogleFonts.pacifico(
                      fontSize: 40,
                      color: Colors.yellow,
                      fontWeight: FontWeight.bold,
                    )
                  ),
                ),

                const SizedBox(height: 120),
                Expanded(
                  child: GridView.count(
                    crossAxisCount: 5,
                    mainAxisSpacing: 25,
                    crossAxisSpacing: 16,
                    padding: EdgeInsets.all(16),
                    children: [
                      _buildCard(context, 'Books', Icons.people, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SchoolDashboard()));
                      }),
                      _buildCard(context, 'Notes', Icons.school, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const NotesHomePage()));
                      }),
                      _buildCard(context, 'Quiz', Icons.class_, onPressed: () {
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const QuizHome()));
                      }),
                      _buildCard(context, 'QP', Icons.check_circle,
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(builder: (context)=>  const QuestionPaperDashboard()));
                          }),
                      _buildCard(context, 'FAQ', Icons.assignment,
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
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  icon,
                  size: 48,
                  color: Colors.deepPurpleAccent,
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

