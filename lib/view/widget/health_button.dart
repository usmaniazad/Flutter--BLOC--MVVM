import 'package:flutter/material.dart';
class HealthButton extends StatelessWidget {
  final String label;
  final Function()? onTap;
  final Widget? widget;
  final Color color;
  final bool? isProgressBar;

  const HealthButton({Key? key, required this.label, required this.onTap,
    this.widget, required this.color,this.isProgressBar})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
            alignment: Alignment.center,
            height: 45,
            decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color:color
        ),
        child: isProgressBar == true
            ? const Center(
          child: SizedBox(
            width: 20,
            height: 20,
            child: CircularProgressIndicator(
              backgroundColor: Colors.transparent,
              color: Colors.white,
            ),
          ),
        )
            :Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              widget == null
                ? Container()
                : Container(
                   margin: const EdgeInsets.only(right: 2),
                  child: widget,
            ),
            Text(label,style:const TextStyle(color: Colors.white,fontFamily: 'Montserrat',fontWeight: FontWeight.w600),
            ),
          ],
        ),

      ),
    );
  }
}
