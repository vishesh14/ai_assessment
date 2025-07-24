import 'package:ai_assessment_app/layout_instruction.dart';
import 'package:flutter/material.dart';

class LlmPromptHandler {

static LayoutInstruction parsePrompt(String prompt){

prompt = prompt.toLowerCase().trim();
final initial = LayoutInstruction.initial();

if(prompt.contains('background green') || prompt.contains('background color green')|| prompt.contains('background colour green'))
{
 return initial.copyWith(backgroundColor: Colors.green);

}else if(prompt.contains('title') && prompt.contains('account')){
  return initial.copyWith(title: 'Account');
}
else if(prompt.contains('input') && prompt.contains('input field') && prompt.contains('yellow'))
{
  return initial.copyWith(inputFiledColor: Colors.yellow[100]!);
}else if( prompt.contains('round') && prompt.contains('save')){
  return initial.copyWith(buttonRadious: BorderRadius.circular(20));
}
else if(prompt.contains('reset')){
  return LayoutInstruction.initial();
}
else {
  return initial;
}
}

}