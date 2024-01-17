import 'package:flutter/material.dart';
 class BackgroundImage extends StatelessWidget {
   const BackgroundImage({super.key});

   @override
   Widget build(BuildContext context) {
     return Container(
       decoration: BoxDecoration(
         image: DecorationImage(
           image: AssetImage(
             'assets/images/design1.png'
           ),
           fit: BoxFit.fill,
           colorFilter: ColorFilter.mode(Colors.transparent, BlendMode.darken),
         )
       ),
     );
   }
 }
