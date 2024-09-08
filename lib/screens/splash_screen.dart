import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:surat_weavers_proj/auths/get_storage_pref.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late String username;
  Future getUsername()async{
    String? data = await StoragePref.getUsername();
    setState(() {
      username = data ?? "<< no user >>";
    });
  }

  @override
  void initState() {
    getUsername().whenComplete(() =>
      log("username --->>> $username"));
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(

    );
  }
}
