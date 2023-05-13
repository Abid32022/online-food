import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:thestart/utils/app_Colors.dart';
import 'package:thestart/widgets/text_widget.dart';

Widget home_Tabbar(String title, bool isSelected, Function onPressed, ) {

  return Expanded(
    child: InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(
        child: Column(
          children: [
            TextWidgetNunitoWithoutSpacing(
                title: title,
                color:isSelected ? Colors.pink: Colors.grey,
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal),

            const SizedBox(
              height: 10,
            ),
            isSelected
                ? Container(
              width: 92,
              height: 4,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.pink),
            )
                : Container(),
          ],
        ),
      ),
    ),
  );
}

Widget filer_Tabbar(String title, bool isSelected, Function onPressed, ) {

  return Container(
    color: AppColors.black2e.withOpacity(0.09),
    height: 70,
    width: 100,
    child: InkWell(
      onTap: () {
        onPressed();
      },
      child: Container(

        child: Column(mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextWidgetNunitoWithoutSpacing(
                title: title,
                color:isSelected ? Colors.pink: AppColors.black2e.withOpacity(0.9),
                fontSize: 13,
                fontWeight: isSelected ? FontWeight.w500 : FontWeight.normal),

            const SizedBox(
              height:16,
            ),
            isSelected
                ? Align(
              alignment: Alignment.bottomCenter,
                  child: Container(
              width: 55,
              height: 2,
              decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(4),
                    color: Colors.pink),
                ),
                )
                : Container(),
          ],
        ),
      ),
    ),
  );
}

Widget tabbarinfo( ){
  return Column(
    children: [

      SizedBox(height: 16,),

      TextField(
        decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            )
        ),
      )
    ],
  );
}