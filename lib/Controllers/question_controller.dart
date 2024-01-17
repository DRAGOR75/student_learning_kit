import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
class QuestionController extends GetxController {
  //animate our progress bar

  AnimationController _animationController;
  Animation _animation;

  Animation get animation => this._animation;

  @override
  void onInit(){
    _animationController=AnimationController(duration:Duration(seconds: 60),vsync: this);
  }
}