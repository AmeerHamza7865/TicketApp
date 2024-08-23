import 'package:flutter/material.dart';
import 'package:ticket_app/Base/res/styles/app_styles.dart';

class HotelsData extends StatefulWidget {
  const HotelsData({super.key});

  @override
  State<HotelsData> createState() => _HotelsDataState();
}

class _HotelsDataState extends State<HotelsData> {


 bool isExpended=false;
    _toggleText(){
      setState(() {
      isExpended=!isExpended;
        
      });
      print("value is :$isExpended");
    }

  @override
  Widget build(BuildContext context) {
    

    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data Ticket Testing data"
          ,maxLines: isExpended==true?null:3,
          overflow: isExpended==true?TextOverflow.visible: TextOverflow.ellipsis,
          ),
          GestureDetector(
            onTap: (){
                    _toggleText();
            },
            child: Text(isExpended==true?"Less":"More" ,style: AppStyles.textStyle.copyWith(color: Colors.blue),),
          )
        ],
      )),
    );
  }
}