import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Snacks{
  static getSnackBar(BuildContext context, String message){
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(message)));
  }

}