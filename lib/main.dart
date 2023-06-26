import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/bindings/portfolio_binding.dart';
import 'package:portfolio_update/firebase_options.dart';
import 'package:portfolio_update/view/dashboard.dart';

void main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  await GetStorage.init("ecode");
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1440, 1024),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Ecode",
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.native,
          initialBinding: PortfolioBinding(),
          initialRoute: "/",
          getPages: [
            GetPage(name: "/", page: () => const Dashboard()),
          ],
          theme: ThemeData(
            textTheme: TextTheme(
              displayMedium: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              displaySmall: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              bodyLarge: TextStyle(
                color: priColor,
                fontFamily: "Joyride",
                fontSize: 35.sp,
              ),
              bodyMedium: TextStyle(
                color: Colors.white,
                fontFamily: "Joyride",
                fontSize: 12.sp,
              ),
              titleMedium: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              titleSmall: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 20.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
