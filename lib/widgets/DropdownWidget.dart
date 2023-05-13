import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_Colors.dart';

class Dropdown extends StatefulWidget {
  const Dropdown({Key? key}) : super(key: key);

  @override
  State<Dropdown> createState() => _DropdownState();
}

class _DropdownState extends State<Dropdown> {
  int selectedIndex = 0;


  String _selectedCountry ="Today";
  var country ={'Yesterday':'IN','Today': 'Pak','Tommorrow':'NP'};

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
    return Scaffold(
      body: Container(
        width: Get.width,
        height: 56,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(8),
          border: Border.all(color: AppColors.black2e.withOpacity(0.17),width: 1,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 10,),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16,vertical: 1),
              child:
              DropdownButton(
                style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 14,color: AppColors.black2e,letterSpacing: 0.7,fontWeight: FontWeight.w500)),
                value: _selectedCountry,
                isExpanded: true,
                isDense: true,
                icon: Image.asset("assets/icons/dropaArrow.png",height: 7.1,width: 15.84,color: AppColors.black2e),
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
    );
  }
}
