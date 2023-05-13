import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_Colors.dart';
import '../../utils/app_constant.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/bottom_sheet.dart';
import '../../widgets/button.dart';
import '../../widgets/cabbage_card.dart';
import '../../widgets/tab_Widget.dart';
import '../../widgets/text_widget.dart';
import '../checkout_screen1/checkout_Screen.dart';


class FilterScreen extends StatefulWidget {
  const FilterScreen({Key? key}) : super(key: key);

  @override
  State<FilterScreen> createState() => _FilterScreenState();
}

class _FilterScreenState extends State<FilterScreen>
{
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {

    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            homeBar(),
            SizedBox(height: 21,),

            Container(
              color: Color(0xffF5F5F5),
              child: Column(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 14),
                    ///
                    height: MySize.scaleFactorHeight * 56,
                    ///
                    width: Get.width,
                    color: AppColors.sphercolor,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,),
                        TextWidgetPoppins(title: AppConstant.cocunot,fontWeight: FontWeight.w700,fontSize: 16,color: AppColors.spheretextc),

                        Text("",),
                      ],
                    ),
                  ),

                  Container(
                    width: MediaQuery.of(context).size.width,
                      child: Image.asset('assets/icons/girl.png',height: 205,fit: BoxFit.fitWidth,)),
                  SizedBox(height: 36,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextWidgetPoppins(title: AppConstant.cocunot,fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e),


                      SizedBox(width: 5,),
                      TextWidgetPoppins(title:"5",fontWeight: FontWeight.w500,fontSize: 12,color: AppColors.black2e),


                      SizedBox(width: 5,),
                      Image.asset("assets/icons/star.png",height: 10,width: 10,),
                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [

                      Text(AppConstant.avanue2,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e),),),
                    ],
                  ),
                  SizedBox(height: 24,),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(AppConstant.artparty,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black2e,),),),
                  ),
                  SizedBox(height: 26,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset("assets/icons/shop-light.png",height: 24,width: 24,),
                      SizedBox(width: 7.7,),
                      TextWidgetPoppins(title: "Click & Collect",fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.black2e),

                      SizedBox(width: 31,),
                      Image.asset("assets/icons/delivervechile.png",height: 24,width: 24,),
                      SizedBox(width: 8,),
                      TextWidgetPoppins(title: "Click & Collect",fontWeight: FontWeight.w400,fontSize: 11,color: AppColors.black2e),
                    ],
                  ),
                  SizedBox(height: 26,),
                  SizedBox(
                    height: 36,
                      width: 100,
                      child: CustomButton(a: true,color: Colors.pink,title: "See more",ontap: (){Get.to(()=>chechkout());},context: context)),
                  SizedBox(height: 36,),
                ],
              ),
            ),
            ///filter Tabbar
            Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    filer_Tabbar(
                      AppConstant.all,
                      selectedIndex == 0,
                          () {
                        setState(() {
                          selectedIndex = 0;
                        });
                      },
                    ),
                    filer_Tabbar(AppConstant.cabbage, selectedIndex == 1, () {
                      setState(() {
                        selectedIndex = 1;
                      });
                    },),
                    filer_Tabbar(AppConstant.desert, selectedIndex == 2, () {
                      setState(() {
                        selectedIndex = 2;
                      });
                    },),
                    filer_Tabbar(AppConstant.layercake, selectedIndex == 3, () {
                      setState(() {
                        selectedIndex = 3;
                      });
                    },),
                    filer_Tabbar(AppConstant.macaroon, selectedIndex == 4, () {
                      setState(() {
                        selectedIndex = 4;
                      });
                    },),
                    filer_Tabbar(AppConstant.individualpas, selectedIndex == 5, () {
                      setState(() {
                        selectedIndex = 5;
                      });
                    },),

                  ],
                ),
              ),
            ),
            SizedBox(height: 36,),

            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 17,),
                  child:
                  TextWidgetPoppins(title: "Cabbage",fontWeight: FontWeight.w700,fontSize: 20,color: AppColors.black2e),
                ),

                ///CabbageCard
                SingleChildScrollView(
                  child: Container(

                    width: MediaQuery.of(context).size.width,
                      child: cabbageCard()),

                ),
              ],
            ),SizedBox(height: 36,),

            Container(
                margin: EdgeInsets.symmetric(horizontal: 17),
                child: CustomButton(title: "Filter a product",
                    ontap:(){
                  Get.bottomSheet(bottomsheet());
                  }, context:context,
                    image:"assets/icons/menu.png" ,color: AppColors.pink)),


            SizedBox(height: 32,),
          ],
        ),
      ),
    );
  }
}
