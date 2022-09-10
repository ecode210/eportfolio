import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/route_manager.dart';
import 'package:get_storage/get_storage.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_update/constants.dart';
import 'package:portfolio_update/controller/bindings/portfolio_binding.dart';
import 'package:portfolio_update/view/dashboard.dart';

void main() async {
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
          debugShowCheckedModeBanner: false,
          defaultTransition: Transition.native,
          initialBinding: PortfolioBinding(),
          initialRoute: "/",
          getPages: [
            GetPage(name: "/", page: () => const Dashboard()),
          ],
          theme: ThemeData(
            textTheme: TextTheme(
              headline2: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              headline3: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: priColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              bodyText1: TextStyle(
                color: priColor,
                fontFamily: "Joyride",
                fontSize: 35.sp,
              ),
              bodyText2: TextStyle(
                color: Colors.white,
                fontFamily: "Joyride",
                fontSize: 12.sp,
              ),
              subtitle1: GoogleFonts.montserrat(
                textStyle: TextStyle(
                  color: Colors.white,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w400,
                ),
              ),
              subtitle2: GoogleFonts.montserrat(
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
