import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/utils/app_Colors.dart';
import 'package:thestart/views/filter_screen/filter_Screen.dart';
import 'package:thestart/widgets/textfield.dart';
import '../../utils/app_constant.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/button.dart';
import '../../widgets/details&Allergience.dart';
import '../../widgets/text_widget.dart';

class Reasearch extends StatefulWidget {
  const Reasearch({Key? key}) : super(key: key);

  @override
  State<Reasearch> createState() => _ReasearchState();
}

class _ReasearchState extends State<Reasearch> {
  int count = 1;

  int selectedIndex = 0;
  String _selectedCountry ="5 parts";
  var country ={'4 parts':'IN','5 parts': 'Pak','3 parts':'NP'};
  List _countries = [];

  CountryDependentDropDown(){
    country.forEach((key, value) {
      _countries.add(key);
    });
  }
  @override
  void initState() {
    super.initState();
    CountryDependentDropDown();
  }
  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),
            homeBar(),
            SizedBox(height: 21,),

            Container(
              padding: EdgeInsets.symmetric(horizontal: 14),
              height: 56,
              width: MediaQuery.of(context).size.width,
              color: AppColors.sphercolor,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset("assets/icons/arrow-left.png",height: 24,width: 24,),
                  Text(AppConstant.cocunot,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.spheretextc)),),
                  Text("",),
                ],
              ),
            ),

            Image.asset('assets/icons/coconut.png'),
            SizedBox(height: 23.86,),
            Row(
              children: [
                SizedBox(width: 17,),
                Text(AppConstant.cocunot,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e),),),
              ],
            ),
            SizedBox(height: 8,),
            Row(
              children: [SizedBox(width: 17,),
                Text(AppConstant.GOURMET,style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e.withOpacity(0.20)),),)
              ],
            ),
            SizedBox(height: 10,),
            Row(
              children: [
                SizedBox(width: 19.32,),
                Image.asset("assets/icons/shop-light.png",height: 24,width: 24,),
                SizedBox(width: 5,),
                Text("Click & Collect",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: Color(0xff937F87))),),
                SizedBox(width: 31,),
                Image.asset("assets/icons/delivervechile.png",height: 24,width: 24,),
                SizedBox(width: 8,),
                Text("Delivery",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 11,fontWeight: FontWeight.w400,letterSpacing: 0.07,color: AppColors.black93)),),
              ],
            ),
            SizedBox(height: 26,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Column(
                    children: [
                      Text("28.00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 22,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.black2e)),),
                    ],
                  ),


                  Container(
                    child: Row(
                      children: [

                        InkWell(
                            onTap: (){
                              if(count>1){
                                setState(() {
                                  count--;
                                });
                              }
                            },
                            child: Image.asset("assets/icons/minus.png",height: 36,width: 36,)),
                        SizedBox(width: 15,),
                        Container(

                          height: 36,
                            width: 25,
                            child: Text("$count",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 24,fontWeight: FontWeight.w700,letterSpacing: 0.07,color: AppColors.black2e)),)),

                        InkWell(
                            onTap: (){
                              setState(() {
                                count++;
                              });
                            },
                            child: Image.asset("assets/icons/plus.png",height: 36,width: 36,)),
                    SizedBox(width: 10,),

                      ],
                    ),
                  ),

                    ],
              ),
            ),

            Row(
              children: [
                SizedBox(width: 17,),
                TextWidgetPoppins(title: "1 piece",fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.black93),
              ],
            ),SizedBox(height: 24,),
                Container(
                 margin: EdgeInsets.symmetric(horizontal: 20),
                  height: 440,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.white,
                  boxShadow: [
                  BoxShadow(
                    color: Color(0xff000000).withOpacity(0.05),
                    blurRadius: 8,
                    spreadRadius: 8,
                    offset: Offset(0, 4), // changes position of shadow
                  ),
                ],),
                  child: Column(
                    children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 17),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [

                          TextWidgetPoppins(title: "The options",fontWeight: FontWeight.w600,fontSize: 16,color: AppColors.black2e),


                          Image.asset("assets/icons/option.png",height: 18,width: 18,),

                        ],
                      ),

                    ),
                      SizedBox(height: 16,),
                      Row(
                        children: [
                          SizedBox(width: 22,),

                          TextWidgetPoppins(title: "CUT",fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e),


                        ],
                      ),
                      SizedBox(width: 4,),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: Get.width,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.light.withOpacity(0.13),width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10,),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                              child: DropdownButton(

                                style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,color: Colors.black38,letterSpacing: 0.7)),

                                value: _selectedCountry,
                                isExpanded: true,
                                isDense: true,
                                icon: Image.asset("assets/icons/dropaArrow.png",height: 7.1,width: 15.84,color: Color(0xff261311).withOpacity(0.5)),
                                underline: Container(),
                                onChanged: (newValue){
                                  setState(() {
                                    _selectedCountry='$newValue';
                                  });
                                },
                                items: _countries.map((country) {
                                  return DropdownMenuItem(child: new Text(country),
                                    value: country,
                                  ) ;
                                }).toList(),
                              ),
                            ),

                          ],
                        ),

                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          SizedBox(width: 22,),
                          TextWidgetPoppins(title: "FLAVOR",fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e),
                        ],
                      ),SizedBox(height: 4,),

                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
                        width: Get.width,
                        height: 56,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(color: AppColors.light.withOpacity(0.13),width: 1,
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(height: 10,),

                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                              child: DropdownButton(

                                style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 16,color: Colors.black38,letterSpacing: 0.7)),
                                value: _selectedCountry,
                                isExpanded: true,
                                isDense: true,
                                icon: Image.asset("assets/icons/dropaArrow.png",height: 7.1,width: 15.84,color: Color(0xff261311).withOpacity(0.5)),
                                underline: Container(),
                                onChanged: (newValue){
                                  setState(() {
                                    _selectedCountry='$newValue';
                                  });
                                },
                                items: _countries.map((country) {
                                  return DropdownMenuItem(child: new Text(country),
                                    value: country,
                                  ) ;
                                }).toList(),
                              ),
                            ),
                          ],
                        ),

                      ),
                      SizedBox(height: 14,),
                      Row(
                        children: [
                          SizedBox(width: 22,),
                          TextWidgetPoppins(title: "Additional Instructions",fontWeight: FontWeight.w700,fontSize: 12,color: AppColors.black2e),
                        ],
                      ),
                      SizedBox(height: 4,),

                      Container(
                          padding: EdgeInsets.symmetric(horizontal: 17),
                          child: CustomTextField(Maxlines: 5,controller: TextEditingController(),isobscure: false,suffix: false,border: true,hint: "lorem ipsim",a: false,prefix: false,)),
                      // Container(
                      //   margin: EdgeInsets.symmetric(horizontal: 20),
                      //   height: 120,
                      //   color: Colors.white,
                      //   // color: Colors.black12,
                      //   child: TextField(
                      //     keyboardType: TextInputType.multiline,
                      //     maxLines: 5,
                      //     decoration: InputDecoration(
                      //       filled: true,
                      //       fillColor: AppColors.white.withOpacity(0.37),
                      //       disabledBorder: InputBorder.none,
                      //       hintText: 'lorem ipsim',
                      //       hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.black2e.withOpacity(0.30),letterSpacing: 0.7)),
                      //       border: OutlineInputBorder(
                      //         borderSide: new BorderSide(color: Colors.black12),
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //       enabledBorder:  OutlineInputBorder(
                      //         borderSide: new BorderSide(color: Colors.black12),
                      //         borderRadius: BorderRadius.circular(8),
                      //       ),
                      //     ),
                      //   ),
                      // ),
                      SizedBox(height: 21,),
                    ],
                  ),
                ),
              ///Details & Allergenes
               ExpnsionTile(),
            ///Details & Allergenes
            ///
              SizedBox(height: 16,),

                Container(
                    margin: EdgeInsets.symmetric(horizontal: 17),
                    child: CustomButton(title: "Nuts", ontap:(){Get.to(()=>FilterScreen());}, context:context,color: AppColors.pink)),
              SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
