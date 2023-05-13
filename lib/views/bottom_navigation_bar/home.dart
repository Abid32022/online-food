import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thestart/utils/app_Colors.dart';
import 'package:thestart/utils/app_constant.dart';
import 'package:thestart/widgets/text_widget.dart';
import '../../models/models.dart';
import '../../utils/size_config.dart';
import '../../widgets/app_bars.dart';
import '../../widgets/button.dart';
import '../../widgets/pageview_banner.dart';
import '../../widgets/tab_Widget.dart';
import '../../widgets/textfield.dart';

class home extends StatefulWidget {
  const home({Key? key}) : super(key: key);

  @override
  State<home> createState() => _homeState();
}

class _homeState extends State<home> {

  int selectedIndex = 0;
  bool _isFavorite = false;
  int _favoritecount = 0;
  void _toggleFavorite(){
    setState(() {
      if(_isFavorite){
        _favoritecount -=1;
        _isFavorite =false;
      }
      else{
        _favoritecount += 1;
        _isFavorite = true;
      }
    });
  }

  String _selectedCountry ="What are you looking for ?";
  var country ={'Somthing to Eat':'IN','What are you looking for ?': 'Pak','Any Delivery':'NP'};
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
      backgroundColor: AppColors.white,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 50,),

            homeBar(),

            SizedBox(height: 52,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child:
                   TextWidgetPoppins(title: AppConstant.Decover,fontSize: 22,fontWeight: FontWeight.w700),

                  ),
                  SizedBox(height: 52,),

                /// Tab bar
                  Row(
                   children: [
                    home_Tabbar(
                    AppConstant.autor,
                   selectedIndex == 0,
                    () {
                   setState(() {
                    selectedIndex = 0;
                     });
                   },

                   ),
                    home_Tabbar(AppConstant.recher, selectedIndex == 1, () {
                     setState(() {
                   selectedIndex = 1;
                   });
                   },),
                   ],
              ),

                SizedBox(height: 34,),

                   Container(
                     width: MediaQuery.of(context).size.width,
                     height: 56,
                     decoration: BoxDecoration(
                       color: AppColors.light.withOpacity(0.05),
                       borderRadius: BorderRadius.circular(8),
                         border: Border.all(color: AppColors.light.withOpacity(0.05),width: 1,
                         ),
                     ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(height: 10,),

                          Padding(
                            padding: EdgeInsets.symmetric(horizontal: 20,vertical: 4),
                            child:
                            DropdownButton(
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
                  SizedBox(height: 16,),

                  Container(
                    child: CustomTextField(a: true,
                        prefix: true,
                        prefix_Icon: "assets/icons/location.png",
                        hint: "Vanue",
                        border: true,
                        suffix: false,
                        isobscure: false,
                        controller: TextEditingController(),
                        Maxlines: 1,
                        p: true,fill: false,
                    ),

                  ),
                  // Container(
                  //   height: 56,
                  //   // color: Colors.black12,
                  //   child: TextField(
                  //     decoration: InputDecoration(
                  //       filled: true,
                  //       fillColor: AppColors.light.withOpacity(0.05),
                  //       disabledBorder: InputBorder.none,
                  //       prefixIcon: Image.asset("assets/icons/location.png",scale: 4,color: Color(0xff261311).withOpacity(0.5),),
                  //         hintText: 'Venue',
                  //         hintStyle: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: AppColors.lighttextcolor,letterSpacing: 0.7)),
                  //         border: OutlineInputBorder(
                  //           borderSide: new BorderSide(color: Colors.black12),
                  //           borderRadius: BorderRadius.circular(8),
                  //         ),
                  //       enabledBorder:  OutlineInputBorder(
                  //         borderSide: new BorderSide(color: Colors.black12),
                  //         borderRadius: BorderRadius.circular(8),
                  //       ),
                  //     ),
                  //   ),
                  // ),

                  SizedBox(height: 16,),

                  Container(
                      child: CustomButton(title: "Rechercher", ontap:(){}, context:context,image:"assets/icons/search-white.png" ,color: AppColors.pink)),

                  SizedBox(height: 66,),
                ],
        ),
      ),
            pageviewbanner(),
            SizedBox(height: 32,),
            Row(
              children: [
                SizedBox(width: 17,),
                TextWidgetPoppins(title: "Categories",fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e)
              ],
            ),SizedBox(height: 14,),

            Categories(),

            SizedBox(height: 16,),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgetPoppins(title: "Anniversaires",fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e),
                  SizedBox(height: 50,),
                  TextWidgetPoppins(title: "See more",fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.black2e),

                ],
              ),
            ),SizedBox(height: 14,),
            Container(
                height: 324,
                width: MediaQuery.of(context).size.width,
                child: Aniversaries()),

            SizedBox(height: 32,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgetPoppins(title: "Mariage",fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e),

                  SizedBox(height: 50,),
                  TextWidgetPoppins(title: "See more",fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.black2e),
                ],
              ),
            ),
            Container(
              height: 324,
                child: Mariage()),

            SizedBox(height: 17,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 17),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextWidgetPoppins(title: AppConstant.product,fontWeight: FontWeight.w700,fontSize: 18,color: AppColors.black2e),
                  SizedBox(height: 50,),

                  TextWidgetPoppins(title: "See more",fontWeight: FontWeight.w400,fontSize: 14,color: AppColors.black2e),
                ],
              ),
            ),
            Container(
              height: 260,
              width: MediaQuery.of(context).size.width,
                child: Bestfruitseller(),
            ),
            SizedBox(height: 50,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 80),
              child: Text(AppConstant.pinterest,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w500,letterSpacing: 0.7,height: 1.3,),),
            ),
            SizedBox(height: 20,),
              Row(
                children: [
                  SizedBox(width: 80,),
                  Image.asset("assets/icons/facebookblack.png",scale: 4,),
                  SizedBox(width: 50,),
                  Image.asset("assets/icons/youtube.png",scale: 4,),
                  SizedBox(width: 50,),
                  Image.asset("assets/icons/twitter.png",scale: 4,),
                  SizedBox(width: 50,),
                  Image.asset("assets/icons/bell.png",scale: 4,),
                ],
              ),
            SizedBox(height: 20,),



            ]
         ),
           )
    );

  }
}
