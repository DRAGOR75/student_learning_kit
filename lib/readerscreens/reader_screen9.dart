
import 'package:student_learning_kit/models/document_models.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';


class ReaderScreen extends StatefulWidget {
  ReaderScreen(this.doc,{Key? key}) : super(key: key);

  Document doc;

  @override
  State<ReaderScreen> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreen> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.doc.doc_url!),
      ),
      // body : Container(
      //   key: _pdfViewerKey,
      //   child: SfPdfViewer.network(widget.doc.doc_url!),
      // ),
      body: Container(
        child:
        SfPdfViewer.asset(widget.doc.doc_url!)
        //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),

            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
        ),

        );
  }
}
