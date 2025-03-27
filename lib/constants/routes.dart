import 'package:flutter/material.dart';

class Routes{
  static Routes instance = Routes();
  // Future <dynamic> pushAndRemoveUnit(Widget widget,BuildContext context){
  Future <dynamic> pushAndRemoveUnit({required widget,required context}){
    return Navigator.of(context).pushAndRemoveUntil(
        MaterialPageRoute(builder: (ctx) => widget), (route) => false);
  }
  //Future <dynamic> push(Widget widget,BuildContext context){
  Future <dynamic> push({required widget,required context}){
    return Navigator.of(context).push(
      MaterialPageRoute(builder: (ctx) => widget),
    );
  }
}