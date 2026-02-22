
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movies_app/core/utils/app_colors.dart';



class OnboardingScreen extends StatelessWidget{
  const OnboardingScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: AppColors.lightBlackColor,
      body:SafeArea(
        child: Stack(
          children: [
            Positioned.fill(child:
            Image.asset('assets/images/Movies Posters.png',
              fit: BoxFit.cover,),
            ),


            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(16),
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
                      Text('Find Your Next Favorite Movie Here',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                          color: AppColors.whiteColor,
                          fontSize: 36,
                          fontWeight: FontWeight.w500,
                        ),),
                      SizedBox(height: 16),
                      Text('Get access to a huge library of movies to suit all tastes. You will surely like it.',
                        textAlign: TextAlign.center,
                        style:
                        TextStyle(
                          color: AppColors.whiteColor,
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
                          child: Text('Explore Now'),),
                      )
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}