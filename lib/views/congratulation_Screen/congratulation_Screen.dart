import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thestart/widgets/app_bars.dart';
import '../../utils/app_Colors.dart';
import '../../utils/size_config.dart';

class congratulationScreen extends StatelessWidget {
  const congratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MySize().init(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(

          children: [
            SizedBox(height: 50,),
            homeBar(),
            SizedBox(height: 150,),
            Stack(

              children: [
                Container(
              width: MediaQuery.of(context).size.width,
                  color: Colors.white,
                  margin: EdgeInsets.symmetric(horizontal: 14),

                  child:Image.asset("assets/icons/congratulation.png",height: 371,),

                ),
                Column(
                  children: [SizedBox(height: 52,),
                    Center(child: Image.asset("assets/icons/icon-success.png",scale:1.2,)),
                    SizedBox(height: 23,),
                    Text("Congratulations",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 30,fontWeight: FontWeight.w600,letterSpacing: 0.07,color: AppColors.white)),),

                    SizedBox(height: 23,),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 35),
                      child: Text("Your order has been taken into account",style: GoogleFonts.getFont('Poppins',textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w500,letterSpacing: 0.07,color: AppColors.white)),),
                    ),
                    SizedBox(height: 220,)
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
