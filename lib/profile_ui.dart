import 'package:ai_assessment_app/layout_instruction.dart';
import 'package:flutter/material.dart';

class ProfileUi extends StatelessWidget{

final LayoutInstruction instruction;
const ProfileUi({ required this.instruction});

  @override
  Widget build(BuildContext context) {
  
    
    return Container(
      color: instruction.backgroundColor,
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 40.0),
    child:  Column(
      children: [
        Center(
          child: Text(
            instruction.title,
            style:  TextStyle(
              fontSize: 26,
              color: Colors.white,
              fontWeight: FontWeight.w400
            ),
          ),
        ),
        SizedBox(height: 10,),
        Text("Name", style: TextStyle(color: Colors.white)),
        TextField(
          decoration: InputDecoration(
            fillColor: instruction.inputFiledColor,
            filled: true
          ),
        ),
         SizedBox(height: 10,),
        Text("Email", style: TextStyle(color: Colors.white)),
        TextField(
          decoration: InputDecoration(
            fillColor: instruction.inputFiledColor,
            filled: true
          ),
        ),
        SizedBox(height: 30),

        Center(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: instruction.buttonRadious
              )
            ),
            onPressed: (){}, child: Text('[ Save ]', style: TextStyle(color: Colors.black),)),
        )

      ],
    ),


    );
   
  }
  
}