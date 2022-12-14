import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:get/get.dart';
import 'package:ugavitest/pages/signuppage.dart';
import 'package:ugavitest/widget/text_widget.dart';

import '../controller/auth_controller.dart';
import '../widget/formbuildtextfield.dart';

class LoginPage extends GetView<AuthController>{
  final _formKey = GlobalKey<FormBuilderState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 300,),
              const Center(child: TextWidget(text: 'Welcome to Ugavi', weight: FontWeight.w600, size: 30,font: "Lato",)),
              const SizedBox(height: 20,),
              const Center(child: TextWidget(text: 'The new in app sales', weight: FontWeight.w400, size: 14,font: "Poppins",)),
              const SizedBox(height: 20,),
              SizedBox(
                child: FormBuilder(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: "Enter email",
                        attribute: "email",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter an email first",
                        font: "Lato",
                        keybordType: TextInputType.emailAddress,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        formType: "text",
                        dropDownList: [],
                        submitAction: () {}),
                    const SizedBox(height: 20,),
                    formbuildtextfield(
                        height: 50,
                        color: 0xff1F1C34,
                        hintText: "Enter password",
                        attribute: "password",
                        dividerColor: 0xff1F1C34,
                        errorText: "Enter a password first",
                        font: "Lato",
                        keybordType: TextInputType.emailAddress,
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        formType: "text",
                        dropDownList: [],
                        submitAction: () {}),
                  ],
                ),
              ),
                ),
              ),
              Container(
                width: Get.width,
                height: 50,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.amber
                ),
                child: Center(child: TextWidget(text: 'Login', weight: FontWeight.w600, size: 14,font: "Lato",)),
              ),
              const SizedBox(height: 20,),
              InkWell(
                child: const Center(child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextWidget(text: 'Create an account', weight: FontWeight.w800, size: 16,font: "Lato",),
                )),
                onTap: (){
                  Get.off(SignUpPage(),arguments: {
                    "name":"Hello"
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}