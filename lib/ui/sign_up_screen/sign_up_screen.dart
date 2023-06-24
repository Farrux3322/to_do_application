// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:zoom_tap_animation/zoom_tap_animation.dart';
//
// import '../sign_in_screen/widgets/universal_input_view.dart';
// import '../utils/colors.dart';
// import '../utils/images.dart';
//
// class SignUpScreen extends StatefulWidget {
//   const SignUpScreen({Key? key}) : super(key: key);
//
//   @override
//   State<SignUpScreen> createState() => _SignUpScreenState();
// }
//
// class _SignUpScreenState extends State<SignUpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColors.background,
//       appBar: AppBar(
//         title: const Text("Sign Up Screen"),
//         centerTitle: true,
//       ),
//       body: Column(
//         children: [
//           Expanded(child: ListView(
//             physics: const BouncingScrollPhysics(),
//             children: [
//               Padding(
//                 padding: const EdgeInsets.symmetric(horizontal: 26,vertical: 10),
//                 child: Column(
//                   children: [
//                     Image.asset(AppImages.appLogo,width: 100.w,height: 100.w,),
//                     SizedBox(height: 25.h,),
//                     Text("Welcome to DO IT",style: TextStyle(fontSize: 25.spMin,fontWeight: FontWeight.w400,color: AppColors.white,fontFamily: "Darumadrop One"),),
//                     SizedBox(height: 6.h,),
//                     Text("create an account and Join us now!",style: TextStyle(fontSize: 18.spMin,fontWeight: FontWeight.w500,color: AppColors.white,fontFamily: "Poppins"),),
//                     SizedBox(height: 48.h,),
//                     UniversalInputView(icon: const Icon(Icons.person_2,color: AppColors.black,),hintText: "Full Name", inputType: TextInputType.text, obscureText: false, onChanged: (v){}),
//                     SizedBox(height: 10.h,),
//                     UniversalInputView(icon: const Icon(Icons.email,color: AppColors.black,),hintText: "E-mail", inputType: TextInputType.emailAddress, obscureText: false, onChanged: (v){}),
//                     SizedBox(height: 10.h,),
//                     UniversalInputView(icon:  const Icon(Icons.lock,color: AppColors.black,),hintText: "Password", inputType: TextInputType.visiblePassword, obscureText: true, onChanged: (v){}),
//                     SizedBox(height: 16.h,),
//                     ZoomTapAnimation(
//                       onTap: (){
//                         Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const TabsBox()));
//                       },
//                       child: Container(
//                         margin: const EdgeInsets.symmetric(horizontal: 26),
//                         height: 50.h,
//                         width: double.infinity,
//                         decoration: BoxDecoration(
//                             borderRadius:BorderRadius.circular(10),
//                             color: AppColors.c_0EA5E9
//                         ),
//                         child: const Center(child: Text("sign up",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: AppColors.white,fontFamily: "Poppins"),),),
//                       ),
//                     ),
//                     SizedBox(height: 19.h,),
//                      Center(child:
//                     Row(
//                       mainAxisAlignment: MainAxisAlignment.center,
//                       children: [
//                         const Text("Already have an account? ",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w400,color: AppColors.white,fontFamily: "Poppins"),),
//                         ZoomTapAnimation(
//                             onTap: (){
//                               Navigator.pushReplacement(context, MaterialPageRoute(builder: (_)=>const SignInScreen()));
//                             },
//                             child: const Text("sign in",style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColors.c_63D9F3,fontFamily: "Poppins"),))
//                       ],
//                     ),),
//                     SizedBox(height: 48.h,),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 26),
//                       child: Row(
//                         children: [
//                           const Text("Sign In with:",style: TextStyle(fontSize: 14,fontFamily: "Poppins",color: AppColors.white,fontWeight: FontWeight.w400),),
//                           SizedBox(width: 17.w,),
//                           ZoomTapAnimation(child: Image.asset(AppImages.appleImage,width: 60.w,height: 60.w,)),
//                           SizedBox(width: 21.w,),
//                           ZoomTapAnimation(child: Image.asset(AppImages.googleImage,width: 60.w,height: 60.w,)),
//                         ],
//                       ),
//                     )
//                   ],
//                 ),
//               ),
//             ],
//           ))
//         ],
//       ),
//     );
//   }
// }
