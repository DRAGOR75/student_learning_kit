import 'dart:ffi';

import 'package:websafe_svg/websafe_svg.dart';
import 'package:flutter/material.dart';

class QuizPage extends StatelessWidget {
  const QuizPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [],
      ),
      body: Stack(
        children: [
          WebsafeSvg.asset('assets/images/Untitled-design.svg',
              fit:BoxFit.fill),
          SafeArea(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    height: 35,
                    decoration: BoxDecoration(
                      border: Border.all(color:Color(0xFF3F4768), width: 3),
                      borderRadius: BorderRadius.circular(50)
                    ),
                    child: Stack(
                      children: [
                        LayoutBuilder(
                          builder:(context,constraints)=>Container(
                            width: constraints.maxWidth*0.5,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(50),
                            ),
                          ),
                        ),
                        Positioned.fill(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text("18 sec"),
                                  Icon(Icons.punch_clock)
                                ],
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
