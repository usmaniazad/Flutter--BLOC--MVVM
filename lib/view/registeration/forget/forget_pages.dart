import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widget/health_button.dart';
import '../../widget/health_input_field.dart';
class ForgetPasswordPage extends StatelessWidget {
  const ForgetPasswordPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
           body: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
               child: Column(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Column(
                     children: [
                       Container(
                             alignment: Alignment.topLeft,
                             margin:const EdgeInsets.only(top: 45,left: 20),
                           child: InkWell(
                               onTap: (){
                               Get.back();
                             },
                               child: const Icon(Icons.arrow_back_ios,color: Colors.red,))
                       ),
                            Container(
                                 margin:const EdgeInsets.only(top: 70),
                                child: Image.asset('assets/images/forgotpassword.png')),
                             const Text('Forgot Password',style: TextStyle(fontSize: 23,fontFamily: 'Montserrat',fontWeight: FontWeight.w500,color:Color(0XFF4D4D4D)),),
                             const SizedBox(
                                    width: 280,
                                    child: Text('Please enter your email associated with your account . We will send you a verification code to your email.',
                                    style: TextStyle(color: Color(0XFF707070),fontFamily: 'Montserrat',fontWeight: FontWeight.normal, ),textAlign: TextAlign.center,),
                             ),
                           Container(
                                  margin:  const EdgeInsets.symmetric(horizontal:17,),
                                   child:  HealthInputField(hint: 'Please enter email address', images: null,),
                       ),
                     ],
                   ),
                   Container(
                     margin: const EdgeInsets.symmetric(horizontal:3),
                       child: HealthButton(label: 'SEND', onTap:(){}, color:Color(0XFFC52C32))
                   )
                 ],
               ),
           ),
        ),
    );
  }
}
