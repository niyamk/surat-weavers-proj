import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:sizer/sizer.dart';
import 'package:surat_weavers_proj/screens/splash_screen.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyCro6k2FoZ-VHjM8A119Utt1QQC2Nec_BE",
          appId: "1:433589948418:android:70b697cd80d94be51ed71b",
          messagingSenderId: "surat-weavers-project",
          projectId: "433589948418")
  );

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (context, orientation, deviceType) {
        return GetMaterialApp(
          theme: ThemeData(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
            inputDecorationTheme: InputDecorationTheme(
              focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: PhoenixThemeColor(), width: 2),
                  borderRadius: BorderRadius.circular(10)),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            primaryColor: PhoenixThemeColor(),
          ).copyWith(
            colorScheme: ThemeData().colorScheme.copyWith(
              primary: PhoenixThemeColor(),
            ),
          ),
          debugShowCheckedModeBanner: false,
          home: SplashScreen(),
        );      },
    );
  }
}

Color PhoenixThemeColor() => Color(0xff036274);
