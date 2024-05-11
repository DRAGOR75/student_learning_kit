import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

import '../questionpapers_models/question_paper_science10.dart';


class QpScreenScience10 extends StatefulWidget {
  QpScreenScience10 (this.scienceQp,{Key? key}) : super(key: key);

  ScienceQp scienceQp;

  @override
  State<QpScreenScience10> createState() => _ReaderScreenState();
}

class _ReaderScreenState extends State<QpScreenScience10> {
  @override
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        backgroundColor: Colors.deepPurpleAccent,
        title: Text(widget.scienceQp.scienceQp_title!),
      ),
      // body : Container(
      //   key: _pdfViewerKey,
      //   child: SfPdfViewer.network(widget.doc.doc_url!),
      // ),
      body: Container(
        child:
        SfPdfViewer.asset(widget.scienceQp.scienceQp_url!),
        //SfPdfViewer.file(File('"D:/Class 9 Maths/Chapter 1 (Number System).pdf"'),
        // initialScrollOffset: const Offset(0, 500),
        // initialZoomLevel: 1.5,
      ),
    );
  }
}
