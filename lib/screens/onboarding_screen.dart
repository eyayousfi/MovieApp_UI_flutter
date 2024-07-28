import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:movie_app_ui/components/custom_outline.dart';

import '../constants.dart';
import 'home_page.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});


  @override
  Widget build(BuildContext context) {
    final screenHight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Constants.kBlackColor,
     body : Container(
       width: screenWidth,
       height:screenHight,


       child:  Stack (
         children: [
           /// effet rose
         Positioned(
           top:screenHight*0.1,
           left: -88 ,

           child: Container(
             height: 166,
             width: 166,
             decoration: BoxDecoration(
             shape:  BoxShape.circle ,
             color: Constants.kPinkColor ,
             ),

             child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 200,sigmaY: 200),

               child: Container(
               height: 166,
               width: 166,) ,) ,

           ) ,),



         ///  effet bleu


           Positioned(
             top:screenHight*0.3,
             right: -100 ,

             child: Container(
               height: 200,
               width: 200,
               decoration: BoxDecoration(
                 shape:  BoxShape.circle ,
                 color: Constants.kGreenColor ,
               ),

               child:BackdropFilter(filter: ImageFilter.blur(sigmaX: 200,sigmaY: 200),

                 child: Container(
                   height: 200,
                   width: 200,) ,) ,

             ) ,),




           SafeArea(
             child: Center(
               child: Column(
                 children: [
                   SizedBox(
                     /// espace men fou9
                     height: screenHight*0.07 ,
             
                   ),
                   /// use the custom outline
                   CustomOutline(
                     strokeWidth: 4,
                     radius: screenWidth * 0.8,
                     padding: const EdgeInsets.all(4),
                     gradient: LinearGradient(
                       begin: Alignment.topLeft,
                       end: Alignment.bottomRight,
                       colors: [
                         Constants.kPinkColor,
                         Constants.kPinkColor.withOpacity(0),
                         Constants.kGreenColor.withOpacity(0.1),
                         Constants.kGreenColor,
                       ],
                       stops: const [0.2, 0.4, 0.6, 1],
                     ),
             
             
                     child: Container(
                       decoration: const BoxDecoration(
                         shape: BoxShape.circle,
                         image: DecorationImage(
                           image: AssetImage('assets/img-onboarding.png'),
                           fit: BoxFit.cover,
                           alignment: Alignment.bottomLeft,
                         ),
                       ),
                     ),
                     width: screenWidth * 0.8,
                     height: screenWidth * 0.8,
                   ),
                 SizedBox(
                   height: screenHight*0.09,
             
                 ),
                   Text('Watch movies in \n Virtual Reality',
                     textAlign : TextAlign.center ,
                   style: TextStyle(
             
                        /// ken l ecran asgher mel 660 ( iphone 5 , l font size 18 , ken akber 34 )
                     fontSize: screenHight <=660? 18 : 34 ,
                     fontWeight: FontWeight.w700,
                     color: Constants.kWhiteColor.withOpacity(0.8) ,
                   ),),
                   SizedBox(
                     height: screenHight*0.02,
             
                   ),
                   Text('Download and watch offline \n wherever you are', textAlign : TextAlign.center,
                     style: TextStyle(
                       fontSize: screenHight <=660? 10 : 12 ,
                       fontWeight: FontWeight.w100,
             
                       color: Constants.kWhiteColor.withOpacity(0.75) ,
                     ),),
             
             
                   SizedBox(
                     height: screenHight*0.06,
             
                   ),
                   
                   GestureDetector(
                     onTap: (){
                       Navigator.push(context, 
                       MaterialPageRoute(builder: (context)=>HomePage()
                        ));
                     },
                     child: CustomOutline(strokeWidth: 3,
                       radius: 20,
                       gradient: LinearGradient(
                         begin: Alignment.topLeft,
                         end: Alignment.bottomRight,
                         colors: [
                           Constants.kPinkColor,
             
                           Constants.kGreenColor ,
                         ],
             
                       ),
                       child: Container(
                     decoration:BoxDecoration(
                     borderRadius: BorderRadius.circular(20),
                       gradient:  LinearGradient(
                         begin:Alignment.topLeft,
                               end:Alignment.topRight,
                           colors: [
                             Constants.kPinkColor.withOpacity(0.3),
                             Constants.kGreenColor.withOpacity(0.3),
             
                       ]
             )
             ) ,
             
             
                         child: Center(
                           child: Text(
                               'Sign Up' ,
                             textAlign: TextAlign.center,
                             style: TextStyle(
                               fontSize: screenHight <=660 ? 11 : 14 ,
                               fontWeight: FontWeight.w700 ,
                             color: Constants.kWhiteColor,
                             ),
                         ),
                         ),
             
                       ),
                       width: 160,
                       height: 33 ,
                       padding: const EdgeInsets.all(2)

                   ),
                   ),
                   const Spacer(),
                Row (
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: List.generate(3, ((index) {
                    return Container(
                      height: 7,
                      width: 7,
                     margin: const EdgeInsets.symmetric(horizontal: 4),
                     decoration: BoxDecoration(
                       shape: BoxShape.circle,
                       color: index==0? Constants.kGreenColor
                           :index==1? Constants.kWhiteColor.withOpacity(0.2):
                       Constants.kWhiteColor.withOpacity(0.2) ,
                     ),

                    );
                  }
                  )
                  ),
                ),

                   SizedBox(
                     height: screenHight*0.03,

                   ),
             
                 ],




                 )


               ),
             ),

         ],
       ),
     ) ,

      
    );
  }
}
