import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NewPassAppbar extends StatelessWidget {
  const NewPassAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
        backgroundColor: const Color(0xFFF3F3F3),
        elevation: 0,
        title: Container(
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Text('Back',
                  style: TextStyle(
                      fontSize: 20
                  ),),
                Icon(CupertinoIcons.question_circle)
              ]
          ),
        )
    );
  }
}
