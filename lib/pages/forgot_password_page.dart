import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:student_learning_kit/components/textfiled.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({super.key});

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}


class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final forgotpasswordController=TextEditingController();
  @override
  void dispose() {
    forgotpasswordController.dispose();
    // TODO: implement dispose
    super.dispose();
  }

  Future passwordReset() async{
    try{
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: forgotpasswordController.text.trim());
      showDialog(context: context,
          builder: (context){
        return AlertDialog(
          content: Text("password link sent succesfully"),
        );
      });
    } on FirebaseAuthException catch(e){
      print(e);

      showDialog(context: context,
          builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.yellow,
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
      ),
      body:Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Enter your email and we will senf you password reset link",style: TextStyle(
            fontSize: 20,
            color: Colors.black,
          ),),
          SizedBox(height: 15,),

          Mytextfield(controller: forgotpasswordController,
              hintText: 'email',
              obscureText: false),
          SizedBox(height: 15,),
          MaterialButton(onPressed:passwordReset,
          child: Text("Reset Password",),
          color: Colors.white38,),
        ],
      ),

    );
  }
}

