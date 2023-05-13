import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:thestart/utils/app_Colors.dart';
import '../utils/size_config.dart';

Widget CustomTextField(
    {
      TextEditingController? controller,
    Function? validator,
    String? hint,
    bool? isobscure,
    String? prefix_Icon,
    bool? prefix,
    bool? suffix,
    String? suffix_Icon,
    bool? border,
    bool? a = true,
      int Maxlines = 1,
      bool p = false,
      List<TextInputFormatter> formatter = const [],
      bool k = false,
      bool b = false,
      bool fill =true,

    })
{

  return a! ? Container(
    height: MySize.scaleFactorHeight*56,
    child: TextFormField(
      inputFormatters: formatter,
      controller: controller!,
      obscureText: isobscure!,
      keyboardType: k ?TextInputType.number:null,
      maxLines: Maxlines,

     decoration: InputDecoration(
          fillColor:fill? Colors.white:AppColors.light.withOpacity(0.05),
          filled: true,
          focusedBorder: border!?OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(8)),
                  borderSide: BorderSide(color: AppColors.black2e.withOpacity(0.25))
              ): InputBorder.none,
               enabledBorder: border!
               ///for true outline border
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                  borderSide: BorderSide(color:AppColors.black2e.withOpacity(0.37), width: 1))
             ///for false outline border
              : InputBorder.none,

          hintText: hint,
          prefixIcon: p? Padding(
            padding: const EdgeInsets.all(10),
            child: prefix! ? Image.asset(prefix_Icon!,height: 24,width: 24,) : null,
          ): null,
          suffixIcon: suffix! ? Image.asset(prefix_Icon!) : null,

          hintStyle: TextStyle(
              fontSize: MySize.scaleFactorWidth * 16,
              fontWeight: FontWeight.w500,
              fontFamily: 'Poppins',
          color: AppColors.black2e.withOpacity(0.30)),


          border: border!
              ? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none)
              : InputBorder.none),

      validator: (value) {
        return validator!(value);
      },
    ),

  ) :

   Container(
   height: 120,
   width: 380,
   // height: MySize.scaleFactorHeight*56,
   child: TextFormField(
     controller: controller!,
     obscureText: isobscure!,
      maxLines: 5,
     decoration: InputDecoration(
         fillColor:Colors.white.withOpacity(0.58),
         filled: true,
         focusedBorder: OutlineInputBorder(
             borderRadius: BorderRadius.all(Radius.circular(8)),
           borderSide: BorderSide(color: AppColors.black2e.withOpacity(0.37)),

         ),
         enabledBorder: border!
         ///for true outline border
             ? OutlineInputBorder(
             borderRadius: BorderRadius.circular(12),
             borderSide: BorderSide(color:AppColors.black2e.withOpacity(0.37), width: 1))
         ///for false outline border
             : OutlineInputBorder(
             borderRadius: BorderRadius.circular(8),
             borderSide: BorderSide(color: Colors.black12)),
         hintText: hint,
         prefixIcon: prefix! ? Image.asset(prefix_Icon!) : null,
         suffixIcon: suffix! ? Image.asset(prefix_Icon!) : null,

         hintStyle: TextStyle(
             fontSize: MySize.scaleFactorWidth * 16,
             fontWeight: FontWeight.w500,
             fontFamily: 'Poppins',
             color: AppColors.black2e.withOpacity(0.30)),

         border: border!
             ? OutlineInputBorder(
             borderRadius: BorderRadius.circular(8),
             borderSide: BorderSide.none)
             : OutlineInputBorder(
           borderSide: BorderSide.none,
           borderRadius: BorderRadius.circular(8),
         )),
     validator: (value) {
       return validator!(value);
     },
   ),

   );
}

