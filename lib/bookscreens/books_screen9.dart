import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/document_models.dart';
import '../readerscreens/reader_screen9.dart';

class BooksScreen extends StatelessWidget {
  const BooksScreen({super.key});
  //Document doc;
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Books'),
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
              Text(
                "Class 9",
                style: GoogleFonts.roboto(
                  fontSize: 28.0,fontWeight: FontWeight.bold),
               ),

              //Now let's map the list of documents into a column children
              Column(
                children: Document.doc_list.map((doc) => ListTile(
                  onTap: () {
                    //Now let's create function to read the pdf
                    Navigator.push(context, MaterialPageRoute(builder: (context) => ReaderScreen(doc)));
                  },
                  title: Text(
                    doc.doc_title!,
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
              ),

            ],

          ),


        ),
    ),

  );
}