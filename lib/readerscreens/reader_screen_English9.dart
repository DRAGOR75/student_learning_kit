import 'dart:io';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:student_learning_kit/models/document_models_English9.dart';


class ReaderScreenEng9 extends StatefulWidget {
  ReaderScreenEng9(this.docEng,{Key? key}) : super(key: key);

  DocumentEng docEng;

  @override
  State<ReaderScreenEng9> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenEng9> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(widget.docEng.docEng_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.network(widget.docEng.docEng_url!,
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        )
    );
  }
}
