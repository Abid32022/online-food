import 'package:favorite_button/favorite_button.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:thestart/utils/app_constant.dart';
import '../models/models.dart';
import '../utils/app_Colors.dart';

Widget pageviewbanner(){
  return   Column(
    children: [
      Container(
        margin: EdgeInsets.symmetric(horizontal: 0),
          height: 189,
          width: Get.width,
          color: Color(0xffDBD4D6),
          child: ListView.builder(
            itemBuilder: (ctx,i){
              return  Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 35),
                child: Container(
                  width: 314,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    children: [
                      Stack(
                        children: [
                          Image.asset('assets/icons/brownbackground.png',height: double.infinity,),

                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 27),
                            child: Image.asset('assets/icons/Cupcake with walnut.png',height: 80,),
                          ),
                        ],
                      ),
                      SizedBox(width: 10,),

                      Expanded(
                        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [

                            SizedBox(height: 20,),

                            Text("Lorem",style: GoogleFonts.getFont('Poppins',textStyle:  TextStyle(fontWeight: FontWeight.w700,fontSize: 14)),),
                            SizedBox(height: 10,),

                            Text("Cœur confit ananas menthe \n fraîche ciselée et crémeux \n ananas",maxLines: 3,style: TextStyle(fontSize: 12,fontWeight: FontWeight.w400),)

                          ],
                        ),
                      ),

                    ],
                  ),
                ),
              );
            },itemCount: 5,
            scrollDirection: Axis.horizontal,

          )
      ),
      SizedBox(height: 10,),
    ],
  );
}

Widget Categories(){

  return  Container(
      height: 110,
      width: Get.width,
      color: Colors.white,
      child: ListView.builder(
        itemBuilder: (ctx,i){
          return  Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Image.asset(viewbannerlist[i].image,width: 160,height: 100,),
              ],
            ),
          );
        },itemCount: viewbannerlist.length,
        scrollDirection: Axis.horizontal,

      )
  );
}

Widget Aniversaries(){

  return ListView.builder(
    itemCount: 4,


    scrollDirection: Axis.horizontal,
    itemBuilder:(context,index){
    return
      Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
      child: Row(
        children: [
          Container(
            height: 324,
            width: 170,
            decoration: BoxDecoration(
              color: Colors.white,

                borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Color(0xff000000).withOpacity(0.1),
                  blurRadius: 4.0,
                  spreadRadius: 2,
                  offset: Offset(0, 4), // changes position of shadow
                ),
              ],
            ),

            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      child: ClipRRect(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                          child: Image.asset(marriage[index].image)),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [

                        Container(
                            padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),


                            child: Image.asset("assets/icons/heart.png",height: 17.8,)
                        ),
                      ],
                    )
                  ],
                ),

                SizedBox(height: 8,),
                Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(AppConstant.Delicius,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,overflow: TextOverflow.ellipsis,),maxLines: 2,),
                    ),SizedBox(height: 10,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(AppConstant.gourmendieset,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                    ),SizedBox(height: 15,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: Text(AppConstant.avanue,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: AppColors.blacklight),),
                    ),
                  ],
                ),
                SizedBox(height: 30,),
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Image.asset("assets/icons/shop-light.png",height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Text("8h-18H",style: TextStyle(color: Colors.black38,fontSize: 11),),
                    SizedBox(width: 15,),
                    Image.asset("assets/icons/delivervechile.png",height: 24,width: 24,),
                    SizedBox(width: 10,),
                    Text("20mm",style: TextStyle(fontSize: 11,color: Colors.black38),)
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  },
  );

}


Widget Mariage(){

  return ListView.builder(
    itemCount: 5,
    shrinkWrap: true,

    scrollDirection: Axis.horizontal,
    itemBuilder:(context,index){
      return
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
          child: Row(
            children: [
              Container(
                height: 324,
                width: 170,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.1),
                      blurRadius: 4.0,
                      spreadRadius: 2,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 122,
                          width: 185,
                          child: ClipRRect(
                          borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                              child: Image.asset("assets/icons/NEW.jpg",fit: BoxFit.fill,)),
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [

                            Container(
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 8),


                                child: Image.asset("assets/icons/heart.png",height: 17.8,)
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(AppConstant.Delicius,style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16),maxLines: 2,overflow: TextOverflow.ellipsis,),
                        ),SizedBox(height: 10,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(AppConstant.gourmendieset,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 12),),
                        ),SizedBox(height: 15,),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 8),
                          child: Text(AppConstant.avanue,style: TextStyle(fontWeight: FontWeight.w400,fontSize: 10,color: AppColors.blacklight),),
                        ),
                      ],
                    ),
                    SizedBox(height: 30,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Image.asset("assets/icons/shop-light.png",height: 24,width: 24,),
                        SizedBox(width: 10,),
                        Text("8h-18H",style: TextStyle(color: Colors.black38,fontSize: 11),),
                        SizedBox(width: 15,),
                        Image.asset("assets/icons/delivervechile.png",height: 24,width: 24,),
                        SizedBox(width: 10,),
                        Text("20mm",style: TextStyle(fontSize: 11,color: Colors.black38),)
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
    },
  );

}


class Bestfruitseller extends StatefulWidget {
  const Bestfruitseller({Key? key}) : super(key: key);

  @override
  State<Bestfruitseller> createState() => _BestfruitsellerState();
}

class _BestfruitsellerState extends State<Bestfruitseller> {

 final _isFavorite = false;
  @override
  Widget build(BuildContext context) {
    return  ListView.builder(
      itemCount: 5,
      shrinkWrap: true,
      scrollDirection: Axis.horizontal,
      itemBuilder:(context,index){
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 7),
          child: Row(
            children: [
              Container(
                width: 180,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                      color: Color(0xff000000).withOpacity(0.1),
                      blurRadius: 4.0,
                      spreadRadius: 2,
                      offset: Offset(0, 4), // changes position of shadow
                    ),
                  ],
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Stack(
                      children: [
                        Container(
                          height: 122,
                          width: 180,
                          child: ClipRRect(
                              borderRadius: BorderRadius.vertical(top: Radius.circular(10),),
                              child: Image.asset("assets/icons/cake.png",)),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 50,
                              width: 85,
                              child: Image.asset("assets/icons/promo.png",),
                            ),
                            SizedBox(width: 22,height: 5,),
                            Stack(
                              children: [
                                Container(
                                  height: 70,
                                  width: 72,
                                  // color: Colors.red,
                                  decoration: BoxDecoration(
                                    // color: Colors.red,
                                      borderRadius: BorderRadius.circular(8),
                                      gradient: LinearGradient(
                                          begin: Alignment.topRight,
                                          end: Alignment.bottomLeft,
                                          colors: [
                                            Color(0xff000000),
                                            Colors.white.withOpacity(0.0),
                                          ]
                                      )
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 30,top: 10),
                                  child: FavoriteButton(
                                    iconSize: 40,
                                    valueChanged: (_isFavorite) {
                                      print('Is Favorite $_isFavorite)');
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(height: 8,),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("Raspberry bush",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 16,overflow: TextOverflow.ellipsis,),),maxLines: 1,),
                            SizedBox(height: 5,),
                            Text("Delicacies and delicacies",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontWeight: FontWeight.w400,fontSize: 12)),),
                            SizedBox(height: 15,),
                          ],
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(width: 5,),
                        Text("14,00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w600)),),
                        Text("16,00 €",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(color: Colors.black38,fontSize: 12,fontWeight: FontWeight.w600,)),),
                        SizedBox(width: 20,),
                        Image.asset("assets/icons/timer-start.png",height: 24,width: 24,),
                        Text("48h",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,color: Colors.pink,fontWeight: FontWeight.w600)),),
                        SizedBox(width: 3,)
                      ],
                    ),
                    Row(
                      children: [
                        SizedBox(width: 10,),
                        Text("1 pièce",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 12,color: Colors.black38,fontWeight: FontWeight.w400)),),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );;
  }
}
