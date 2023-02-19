import 'package:flutter/material.dart';
class SignWithNumber extends StatelessWidget {
  const SignWithNumber({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
         body: Container(
          width: MediaQuery.of(context).size.width,
           child: Column(
             children: [
              Container(
                  alignment: Alignment.topLeft,
                   margin:const EdgeInsets.only(left:10,top: 25),
                  child: const Icon(Icons.arrow_back_ios_new_rounded,color: Colors.red,)
              ),

             ],
           ),
         ),
      ),
    );
  }
}
