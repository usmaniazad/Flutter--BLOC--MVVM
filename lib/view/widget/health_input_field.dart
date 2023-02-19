import 'package:flutter/material.dart';

class HealthInputField extends StatelessWidget {
  final String? images;
  final String hint;
  final TextEditingController? controller;
  final Widget? widget;
  final Color? labelColor;
  final bool? isObscureText;
  final Function()? onPasswordClick;
  final TextInputType? textInputType;

  HealthInputField({
    Key? key,
    required this.hint,
    this.controller,
    this.widget,
    this.onPasswordClick,
    this.textInputType,
    this.isObscureText = false,
    this.labelColor,
    required this.images,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Container(
            margin: const EdgeInsets.only(left: 5),
            child: Container(
              height: 47,
              margin: const EdgeInsets.only(top: 8.0),
              padding: const EdgeInsets.only(left: 14),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(color: Color(0xFFDCDCDC), width: 1.0),
                borderRadius: BorderRadius.circular(6),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: TextFormField(
                    controller: controller,
                    readOnly: widget == null ? false : true,
                    obscureText: isObscureText!,
                    autofocus: false,
                    keyboardType: textInputType,
                    cursorColor: Colors.black,
                    decoration: InputDecoration(
                        hintText: hint,
                        hintStyle: const TextStyle(
                            color: Colors.grey,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.normal),
                        focusedBorder: const UnderlineInputBorder(
                            borderSide:
                                BorderSide(color: Color(0xFFDCDCDC), width: 0)),
                        enabledBorder: const UnderlineInputBorder(
                            borderSide: BorderSide(
                                color: Color(0xFFDCDCDC), width: 0))),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: images != null
                        ? InkWell(
                            onTap: onPasswordClick,
                            child: Image.asset(
                              images!,
                              width: 22,
                            ),
                          )
                        : Container(),
                  ),
                  widget == null
                      ? Container()
                      : Container(
                          child: widget,
                        )
                ],
              ),
            ))
      ]),
    );
  }
}
