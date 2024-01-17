import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {

  final Function()? onTap;
  const MyButton({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:50,vertical: 15),
            margin: EdgeInsets.symmetric(horizontal: 25,vertical: 25),
            decoration: BoxDecoration(color: Colors.white,
            borderRadius:BorderRadius.circular(8)),
            child: Center(child: Text("Sign In",
            style: TextStyle(color: Colors.deepPurple),),),
          ),
        ],
      ),
    );
  }
}
