import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../questionpapers_models/question_paper_english10.dart';
import '../questionpapers_models/question_paper_social10.dart';



class QpScreenSocial10 extends StatefulWidget {
  QpScreenSocial10 (this.socialQp,{Key? key}) : super(key: key);

  SocialQp socialQp;

  @override
  State<QpScreenSocial10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<QpScreenSocial10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.socialQp.socialQp_title!),
      ),
      // body : Container(
      //   key: _pdfViewerKey,
      //   child: SfPdfViewer.network(widget.doc.doc_url!),
      // ),
      body: Container(
        child:
        SfPdfViewer.asset(widget.socialQp.socialQp_url!),
        //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
        // initialScrollOffset: const Offset(0, 500),
        // initialZoomLevel: 1.5,
      ),
    );
  }
}