library basic_elevated_button;

import 'package:basic_elevated_button/helper/app_localize.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';



class BasicElevatedButton extends StatelessWidget {
  const BasicElevatedButton(
      {Key? key,
        required this.onTap,
        this.buttonText,
        this.color,
        this.icons,
        this.height,
        this.fontSize,
        this.radius=25,
        this.textColor,this.width})
      : super(key: key);

  final VoidCallback?  onTap;
  final String ? buttonText;
  final Color? color;
  final Color? textColor;
  final double? width;
  final double? height;
  final double? fontSize;
  final double? radius;
  final IconData? icons;



  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          gradient: color==null ?const LinearGradient(colors: [Color(0xFF4ABEFB) ,Color(0xFF1EEEE0),]):null,
          borderRadius: BorderRadius.circular(radius!.r)
      ),
      width: width ?? MediaQuery.of(context).size.width ,
      height:height?? 40.h,
      child: ElevatedButton(
        onPressed: onTap,
        style:
        ElevatedButton.styleFrom(
          backgroundColor: color!=null?color!:Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!.r)),
        ),
        child:icons != null ? Icon(icons):
        Text(AppLocalize.of(context)!.trans(buttonText!),
            style: TextStyle(color: textColor ?? const Color(0xFF262439), fontSize:fontSize?? 20.sp, fontWeight: FontWeight.w500)),
      ),
    );
  }
}
