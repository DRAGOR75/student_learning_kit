import 'dart:io';

import 'package:flutter/material.dart';
import 'package:student_learning_kit/models/documnet_models_Social10.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:student_learning_kit/models/document_models_English9.dart';


class ReaderScreenSoc10 extends StatefulWidget {
  ReaderScreenSoc10(this.docSoc1,{Key? key}) : super(key: key);

  DocumentSoc1 docSoc1;

  @override
  State<ReaderScreenSoc10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenSoc10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(widget.docSoc1.docSoc1_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.network(widget.docSoc1.docSoc1_url!,
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        )
    );
  }
}
