import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../questionpapers_models/question_paper_maths10.dart';


class QpScreenMaths10 extends StatefulWidget {
  QpScreenMaths10 (this.mathQp,{Key? key}) : super(key: key);

  MathQp mathQp;

  @override
  State<QpScreenMaths10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<QpScreenMaths10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.mathQp.mathQp_title!),
      ),
      // body : Container(
      //   key: _pdfViewerKey,
      //   child: SfPdfViewer.network(widget.doc.doc_url!),
      // ),
      body: Container(
        child:
        SfPdfViewer.asset(widget.mathQp.mathQp_url!),
        //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
        // initialScrollOffset: const Offset(0, 500),
        // initialZoomLevel: 1.5,
      ),
    );
  }
}
