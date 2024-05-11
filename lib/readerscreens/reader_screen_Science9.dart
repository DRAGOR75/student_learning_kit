import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';
import 'package:student_learning_kit/models/document_models_Science9.dart';


class ReaderScreenSci9 extends StatefulWidget {
  ReaderScreenSci9 (this.docSci,{Key? key}) : super(key: key);

  DocumentSci docSci;

  @override
  State<ReaderScreenSci9> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenSci9> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(widget.docSci.docSci_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.asset(widget.docSci.docSci_url!),
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        );
  }
}
