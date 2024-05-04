
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class  ElevatedHelper extends StatelessWidget {
  const ElevatedHelper(
      {Key? key,
        required this.onTap,
        this.buttonText,
        this.color,
        this.icons,
         this.fontSize,
        this.radius=25,
        this.textColor, })
      : super(key: key);

  final VoidCallback?  onTap;
  final String ? buttonText;
  final Color? color;
  final Color? textColor;
    final double? fontSize;
  final double? radius;
  final IconData? icons;



  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      style:
      ElevatedButton.styleFrom(
        backgroundColor: color!=null?color!:Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(radius!.r)),
      ),
      child:icons != null ? Icon(icons):
      Text( buttonText!  ,
          style: TextStyle(color: textColor ?? const Color(0xFF262439), fontSize:fontSize?? 20.sp, fontWeight: FontWeight.w500)),
    );
  }
}
