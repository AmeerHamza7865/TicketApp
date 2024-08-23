import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class ExpandedTextWidget extends StatefulWidget {
  const ExpandedTextWidget({super.key,required this.text});
  final String text;

  @override
  State<ExpandedTextWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<ExpandedTextWidget> {
 bool isExpended=false;
    _toggleText(){
      setState(() {
      isExpended=!isExpended;
        
      });
      print("value is :");
    }


  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(widget.text,
        maxLines:isExpended==true?null: 3,
        overflow:isExpended==true?TextOverflow.visible: TextOverflow.ellipsis,
        
        ),
        GestureDetector(
          onTap: (){
              _toggleText();
          },
          child: Text( isExpended ==true?"More":"Less",style: AppStyles.textStyle.copyWith(color: Colors.blue),
        )),
        

      ],
    );
  }
}