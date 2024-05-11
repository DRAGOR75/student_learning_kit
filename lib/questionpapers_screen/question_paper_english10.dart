import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../questionpapers_models/question_paper_english10.dart';



class QpScreenEnglish10 extends StatefulWidget {
  QpScreenEnglish10 (this.englishQp,{Key? key}) : super(key: key);

  EnglishQp englishQp;

  @override
  State<QpScreenEnglish10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<QpScreenEnglish10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.englishQp.englishQp_title!),
      ),
      // body : Container(
      //   key: _pdfViewerKey,
      //   child: SfPdfViewer.network(widget.doc.doc_url!),
      // ),
      body: Container(
        child:
        SfPdfViewer.asset(widget.englishQp.englishQp_url!),
        //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
        // initialScrollOffset: const Offset(0, 500),
        // initialZoomLevel: 1.5,
      ),
    );
  }
}
