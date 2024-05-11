import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import 'package:student_learning_kit/models/document_models_English10.dart';


class ReaderScreenEng10 extends StatefulWidget {
  ReaderScreenEng10(this.docEng1,{Key? key}) : super(key: key);

  DocumentEng1 docEng1;

  @override
  State<ReaderScreenEng10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<ReaderScreenEng10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar : AppBar(
          backgroundColor: Colors.deepPurpleAccent,
          title: Text(widget.docEng1.docEng1_title!),
        ),
        // body : Container(
        //   key: _pdfViewerKey,
        //   child: SfPdfViewer.network(widget.doc.doc_url!),
        // ),
        body: Container(
          child:
          SfPdfViewer.network(widget.docEng1.docEng1_url!,
            //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
            // initialScrollOffset: const Offset(0, 500),
            // initialZoomLevel: 1.5,
          ),
        )
    );
  }
}
