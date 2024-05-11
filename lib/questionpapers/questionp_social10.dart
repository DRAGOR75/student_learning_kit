import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_learning_kit/questionpapers_models/question_paper_social10.dart';
import 'package:student_learning_kit/questionpapers_screen/question_paper_social10.dart';

import '../questionpapers_models/question_paper_english10.dart';

import '../questionpapers_screen/question_paper_english10.dart';


class QuestionPaperSocial10 extends StatelessWidget {
  const QuestionPaperSocial10({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Question Paper'),
      backgroundColor: Colors.deepPurple,
    ),
    //
    body: Padding(
      padding: const EdgeInsets.symmetric(vertical: 18.0,horizontal: 16.0),
      child:SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            //Now let's map the list of documents into a column children
            Text(
              "Class 10",
              style: GoogleFonts.roboto(
                  fontSize: 28.0,fontWeight: FontWeight.bold),
            ),

            Column (
              children: SocialQp.socialQp_list.map((socialQp) => ListTile(
                onTap: () {
                  //Now let's create function to read the pdf
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QpScreenSocial10(socialQp)));
                },
                title: Text(
                  socialQp.socialQp_title!,
                  style: GoogleFonts.nunito(),
                  overflow: TextOverflow.ellipsis,
                ),
                //subtitle: Text("${doc.page_num!} Pages"),

                leading: const Icon(
                  Icons.picture_as_pdf,
                  color: Colors.yellow,
                  size: 50.0,
                ),
              )).toList(),
            )

          ],

        ),


      ),
    ),

  );
}