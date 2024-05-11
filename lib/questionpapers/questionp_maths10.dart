
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../questionpapers_models/question_paper_maths10.dart';
import '../questionpapers_screen/question_paper_maths10_screen.dart';

class QuestionPaperMaths10 extends StatelessWidget {
  const QuestionPaperMaths10({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Question Paper'),
      backgroundColor: Colors.deepPurpleAccent,
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
              children: MathQp.mathQp_list.map((mathQp) => ListTile(
                onTap: () {
                  //Now let's create function to read the pdf
                  Navigator.push(context, MaterialPageRoute(builder: (context) => QpScreenMaths10(mathQp)));
                },
                title: Text(
                  mathQp.mathQp_title!,
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