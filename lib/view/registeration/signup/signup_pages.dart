import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/health_routes_constant.dart';
import '../../widget/health_button.dart';
import '../../widget/health_input_field.dart';
class SignUpPages extends StatefulWidget {
  const SignUpPages({Key? key}) : super(key: key);
  @override
  State<SignUpPages> createState() => _SignUpPagesState();
}
class _SignUpPagesState extends State<SignUpPages> {
  bool isPasswordVisible1=true;
  bool isPasswordVisible2=true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: SingleChildScrollView(
           child: Container(
              width: MediaQuery.of(context).size.width,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       Container(
                           alignment: Alignment.topLeft,
                           margin:const EdgeInsets.only(top: 40,left: 20),
                           child: InkWell(
                               onTap: (){
                                 Get.back();
                               },
                               child: const Icon(Icons.arrow_back_ios,color: Colors.red,)),
                       ),
                       Container(
                           alignment: Alignment.topLeft,
                           margin: const EdgeInsets.only(top:45,left: 40),
                           child:const Text('Sign Up',style: TextStyle(fontSize: 26,fontFamily:'Montserrat',fontWeight: FontWeight.w500,color: Color(0XFF4D4D4D)),)
                       ),
                       Container(
                           alignment: Alignment.topLeft,
                           margin: const EdgeInsets.only(left:42),
                           child: const Text('Please create a new account.',style: TextStyle(fontFamily:'Montserrat',fontWeight:
                           FontWeight.w500,color: Color(0XFFC5C5C5),fontSize: 14),)),
                       const SizedBox(height: 10,),
                       Container(
                         margin:  const EdgeInsets.symmetric(horizontal:17,),
                         child:  HealthInputField(hint: 'Email Address', images: null,),
                       ),
                       Container(
                         margin:  const EdgeInsets.symmetric(horizontal:17,),
                         child:  HealthInputField(hint: 'Phone Number', textInputType: TextInputType.phone,images: null,),
                       ),
                       Container(
                         margin:  const EdgeInsets.symmetric(horizontal:17,),
                         child:  HealthInputField(hint: 'Password',
                             isObscureText:isPasswordVisible1,
                             onPasswordClick: (){
                                setState(() {
                                  isPasswordVisible1=!isPasswordVisible1;
                                });
                             },
                             images:!isPasswordVisible1 ?'assets/images/eyes_hide_logo.png':'assets/images/eye_logo.png'),
                       ),
                       Container(
                         margin:  const EdgeInsets.symmetric(horizontal:17,),
                         child:  HealthInputField(hint: 'Confirm Password',
                             isObscureText: isPasswordVisible2,
                             onPasswordClick: (){
                                 setState(() {
                                   isPasswordVisible2=!isPasswordVisible2;
                                 });
                             },
                             images:! isPasswordVisible2 ?'assets/images/eyes_hide_logo.png':'assets/images/eye_logo.png'),
                       ),
                      const SizedBox(height: 20,),
                       Container(
                           margin: const EdgeInsets.symmetric(horizontal:21),
                           child: HealthButton(label: 'SIGN UP', onTap:(){}, color:Color(0XFFC52C32))
                       )
                     ],
                   ),
                 const  SizedBox(height:180),
                   Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children:   [
                       const Text("Doesn't have an account?",style: TextStyle(color: Colors.grey,),),
                       GestureDetector(
                           onTap: (){
                             Get.toNamed(RouteConstant.SIGNINROUTS);
                           },
                           child: const Text("Sign In",style: TextStyle(fontSize: 14,color: Color(0XFFC52C32),fontFamily: 'Montserrat',fontWeight: FontWeight.w600),)
                       )
                     ],
                   ),
                 ],
               ),
           ),
         ),
      ),
    );
  }
}
