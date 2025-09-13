import 'package:faceboook/ulitss/AppColors.dart';
import 'package:faceboook/screens/home/home.dart';
import 'package:faceboook/ulitss/AppAssets.dart';
import 'package:faceboook/widget/CustomTextField.dart';

import 'package:flutter/material.dart';

class loginscreen extends StatelessWidget {
  loginscreen({super.key});
  static const routename = "login";
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.only(top: 100, right: 8.0, left: 8.0),
          child: Column(
            children: [
              Image.asset(ImagePaths.image11),
              SizedBox(height: 60),
              Customtextfield(hint: "Mobile Number or Email Address",),
              SizedBox(height: 30),
              Customtextfield(hint:"Password", isPassword: true,),
              SizedBox(height: 50),

              Container(
                width: double.infinity,
                height: 55,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
                    backgroundColor: AppColors.facebookBlue,
                  ),

                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      Navigator.pushNamed(context, homescreen.routename);
                    }
                  },
                  child: Text(
                    "Login",
                    style: TextStyle(color: AppColors.white, fontSize: 20),
                  ),
                ),
              ),
              Spacer(),
              Image.asset(ImagePaths.metaLogo, height: 60),
            ],
          ),
        ),
      ),
    );
  }
}
