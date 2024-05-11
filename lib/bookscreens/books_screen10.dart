import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:student_learning_kit/models/document_models10.dart';
import 'package:student_learning_kit/readerscreens/reader_screen10.dart';

class BooksScreenTen extends StatelessWidget {
  const BooksScreenTen({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Class 10'),
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
              children: DocumentOne.docone_list.map((docone) => ListTile(
                onTap: () {
                  //Now let's create function to read the pdf
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ReaderScreenTen(docone)));
                },
                title: Text(
                  docone.docone_title!,
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