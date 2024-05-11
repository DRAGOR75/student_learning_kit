import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:student_learning_kit/models/document_models_Science10.dart';


class ReaderScreenSci10 extends StatefulWidget {
  ReaderScreenSci10 (this.docSci1,{Key? key}) : super(key: key);

  DocumentSci1 docSci1;

  @override
  State<ReaderScreenSci10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenSci10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(widget.docSci1.docSci1_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.asset(widget.docSci1.docSci1_url!),
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        );
  }
}
