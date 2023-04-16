import 'dart:async';
import 'package:app/Areas/Controllers/dashboard/dashboard_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../utilities/Colors/colors.dart';
import '../Drawer_controller/drawer_controller.dart';
import '../widgets/text_widget.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  /*
    # Timer() method get duration, and navigator.
    Duration - After how many seconds the navigated page route opens.
    MaterialPageRoute() method get contex to returns screen route.
  */
  @override
  void initState() {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: AppColors.white,
    ));
    super.initState();

    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        //MaterialPageRoute() method get contex to returns screen route.
        MaterialPageRoute(
          builder: (context) => MaterialApp(
            home: Stack(
              children: const [
                DrawerControllerScreen(),
                DashboardControllerScreen(),
              ],
            ),
          ),
        ),
      );
    });

    // Set the status bar to transparent
  }

  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: AppColors.amberorange,
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        color: AppColors.white,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 730,
                child: Align(
                  alignment: Alignment.center,
                  child: Image(
                    width: 30,
                    height: 30,
                    color: Colors.black,
                    image: AssetImage('images/app.png'),
                  ),
                ),
              ),
              SizedBox(
                // height: 80,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end, //y-axis
                  crossAxisAlignment: CrossAxisAlignment.center, //x-axis
                  children: [
                    const SizedBox(
                      width: 22,
                      height: 22,
                      child: CircularProgressIndicator(
                        color: Colors.black,
                        strokeWidth: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextWidget(
                      "From",
                      8.0,
                      AppColors.black,
                      FontWeight.w300,
                      0,
                      TextAlign.center,
                    ),
                    TextWidget(
                      "NOTIO Software Solutions",
                      7.0,
                      AppColors.black,
                      FontWeight.w500,
                      0,
                      TextAlign.center,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
