import 'package:flutter/material.dart';
import '../utils/app_Colors.dart';
import '../utils/size_config.dart';

Widget CustomButton({String? title, Function? ontap, BuildContext? context,String? image,Color?color = AppColors.pink,
  bool a = true
    }) {
  return InkWell(
    onTap: () {
      ontap!();
    },
    child:
    Container(
      height: MySize.scaleFactorHeight * 60,
      width: MediaQuery.of(context!).size.width,
      decoration: BoxDecoration(
           color: color, borderRadius: BorderRadius.circular(8)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if(image !=null)Image.asset(image,height: 20,width: 20,),
          SizedBox(width: 4,),
          a ? Text(
            title!,
            style: TextStyle(
                color: Colors.white,
                fontSize: MySize.size16,
                fontWeight: FontWeight.w600,
                fontFamily: 'Inter'))
              :Text(
              title!,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: MySize.size16,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Poppins'))

        ],
      ),
    ),
  );
}
Widget CustomButton2({String? title, Function? ontap, BuildContext? context,String? image,Color?color = AppColors.pink,
  bool a = true,Widget?widget,
}) {
  return InkWell(
    onTap: () {
      ontap!();
    },
    child:
    Container(
      height: MySize.scaleFactorHeight * 60,
      width: MediaQuery.of(context!).size.width,
      decoration: BoxDecoration(
          color: color, borderRadius: BorderRadius.circular(8)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            if(image !=null)Image.asset(image,height: 20,width: 20,),
            SizedBox(width: 4,),
            Text(""),
            Text(
                title!,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: MySize.size16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins')),

            CircleAvatar(
              backgroundColor: Colors.white,
              child: widget,
            ),
          ],
        ),
      ),
    ),
  );
}