import 'package:flutter/material.dart';
import 'package:faceboook/ulitss/AppColors.dart';
class Customtextfield extends StatelessWidget {
  String hint;
  bool isPassword;


  Customtextfield({required this.hint, this.isPassword = false, super.key});
String? _validate(String? value){
  if(value==null||value.isEmpty){
    return'This Field is Required';
  }if(isPassword){
    if(value.length<6){
return 'Password should be at least 6 characters';
    }
  }else{
    final emailRegex =RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+");
    if(!emailRegex.hasMatch(value)){
      return 'Please enter a valid email';
    }
  } return null;
}
  @override
  Widget build(BuildContext context) {
    return TextFormField(

      obscureText: isPassword,
      decoration: InputDecoration(

        border: OutlineInputBorder(),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: AppColors.facebookBlue,width: 1.5),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: BorderSide(color: Colors.black26,width: 1.5),
        ),
        filled: true,
        fillColor: AppColors.lightGray,
        labelText: hint,
      ),
      validator: _validate,
    );
  }
}
