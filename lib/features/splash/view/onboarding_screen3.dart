
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';



class OnboardingScreen3 extends StatelessWidget{
  const OnboardingScreen3({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.lightBlackColor,
      body:SafeArea(
        child: Stack(
          children: [
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child:SizedBox(
                  height: MediaQuery.of(context).size.height*0.75,
                  child:  Image.asset('assets/images/The Godfather 1.png',
                    fit: BoxFit.cover,),

                )
            ),
            Positioned(
                top: 0,
                left: 0,
                right: 0,
                child:SizedBox(
                  height: MediaQuery.of(context).size.height*0.75,
                  child:  Image.asset('assets/images/The Godfather 2.png',
                    fit: BoxFit.cover,),

                )
            ),


            Align(
              alignment: Alignment.bottomCenter,
                child: Container(
                  width:double.infinity,
                  //height: 252,
                  padding: EdgeInsets.symmetric(horizontal: 8,  ),
                  decoration: BoxDecoration(
                    color:AppColors.lightBlackColor,
                    borderRadius: BorderRadius.circular(24),
                  ),
                  child:
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    //mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 24,),
                      Text('Explore All Genres',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                        ),),
                      SizedBox(height: 16),
                      Text('Discover movies from every genre, in all available qualities. Find something new and exciting to watch every day.',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                          color: AppColors.whiteColor.withOpacity(0.6),
                          fontSize: 20,
                          fontWeight: FontWeight.w400,

                        ),),
                      SizedBox(height: 24),
                      SizedBox(
                        width:double.infinity,
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: AppColors.yellowColor,
                              foregroundColor: AppColors.lightBlackColor,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(15),
                              )

                          ),
                          child: Text('Next'),),
                      ),
                      SizedBox(height: 16,),
                      SizedBox(
                        width:double.infinity,
                        child: ElevatedButton(onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.transparent,
                              foregroundColor: AppColors.yellowColor,
                              padding: EdgeInsets.symmetric(vertical: 15),
                              textStyle: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                              ),
                              shape: RoundedRectangleBorder(
                                side: BorderSide(color: AppColors.yellowColor),
                                borderRadius: BorderRadius.circular(15),
                              )

                          ),
                          child: Text('Back'),),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
      ),
    );
  }
}