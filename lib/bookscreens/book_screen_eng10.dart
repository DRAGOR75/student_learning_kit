import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/document_models_English10.dart';
import '../readerscreens/reader_screen_English10.dart';

class BooksScreenEng10 extends StatelessWidget {
  const BooksScreenEng10({super.key});
  @override
  Widget build(BuildContext context) => Scaffold(
    //drawer: const NavigationDrawer(),
    appBar: AppBar(
      title: const Text('Class 9'),
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
              "Class 9",
              style: GoogleFonts.roboto(
                  fontSize: 28.0,fontWeight: FontWeight.bold),
            ),

            Column (
              children: DocumentEng1.docEng1_list.map((docEng1) => ListTile(
                onTap: () {
                  //Now let's create function to read the pdf
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ReaderScreenEng10(docEng1)));
                },
                title: Text(
                  docEng1.docEng1_title!,
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