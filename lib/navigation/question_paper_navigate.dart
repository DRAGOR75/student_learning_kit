import 'package:flutter/material.dart';
import '../components/background_image.dart';
import '../pages/home_page.dart';
import 'navigation1_qp.dart';
import 'navigation2_qp.dart';
import 'navigation3_qp.dart';
import 'navigation4_qp.dart';


class QuestionPaperDashboard extends StatelessWidget {
  const QuestionPaperDashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const BackgroundImage(),
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
                  icon: const Icon(Icons.notifications),
                  onPressed: () {},
                ),
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.of(context).push(MaterialPageRoute(builder: (context)=> HomePage()));
                  },
                ),
              ],
            ),

            body: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Question Papers',
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
                    padding: const EdgeInsets.all(16),
                    children: [
                      _buildCard(context, 'Maths', Icons.format_list_numbered_outlined, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const MathsQpDashboard()));
                      }),
                      _buildCard(context, 'Science', Icons.science, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const ScienceQpDashboard()));
                      }),
                      _buildCard(context, 'Social Science', Icons.people_alt, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const SocialQpDashboard()));
                      }),
                      _buildCard(context, 'English', Icons.abc, onPressed: () {
                        Navigator.pop(context);
                        Navigator.of(context).push(MaterialPageRoute(builder: (context)=> const EnglishQpDashboard()));
                      }),
                      _buildCard(context, 'Programming', Icons.people,
                          onPressed: () {}),

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
              const SizedBox(height: 16),
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

