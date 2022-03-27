import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:login_page/widgets/login_textfield.dart';
import 'package:login_page/widgets/table.dart';


class DialogBox {
  final String?  password;
  final Alignment? alignment;
  dynamic insetPadding;
  dynamic  height;
  dynamic padding;
  dynamic width;
  dynamic firsticon;
  dynamic secondicon;
  final logout;
  final contentPadding;

  DialogBox({this.alignment,
    this.width,
    this.insetPadding,
    this.height,
    this.firsticon,
    this.secondicon,
    this.padding,
    this. contentPadding,
    this.password,

    this.logout});
  getAlertDialogBox(BuildContext context) {
    showDialog(context: context,
        builder: (context) {
     return  AlertDialog(
       alignment: alignment ?? Alignment.center,
        contentPadding: contentPadding ?? EdgeInsets.zero,
        insetPadding: insetPadding?? EdgeInsets.zero,
        content: Container(
          width: width,
          height: height! ?? MediaQuery.of(context).size.height * 0.5,
          padding: padding ?? EdgeInsets.zero,
          child: Column(
            children: [
              const Text('Add Daily Update',
                style: TextStyle(
                    fontSize: 25
                ),),
              const Divider(color: Colors.black,),
              LoginTextForm(hintText: '2022-03-26',
                labelText: 'Update for',
                fillcolor: Colors.white,
              ),

              const SizedBox(
                height: 5
              ),
              LoginTextForm(hintText: 'Daily Update [ 2022-03-26 (Sat) ]',
              labelText: 'Title*',
                fillcolor: Colors.white,
              ),

              const SizedBox(
                  height: 10
              ),
              const Text('Mention your Productivity (Work done) of the Day *'),
              const SizedBox(
                  height: 30
              ),
              LoginTextForm(hintText: 'enter something',
                fillcolor: Colors.white,

                contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 100)
                ,),





            ],
          )
        ),
      );
    });
  }
}