import 'dart:io';

import 'package:flutter/material.dart';
import 'package:platform_plus/platform_plus.dart';

late PlatformPlus platformPlus;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  platformPlus = await PlatformPlus.getInstance();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: Text('Running on: ${Platform.isAndroid ? platformPlus.androidSdkNumber : "iOS"}\n'),
        ),
      ),
    );
  }
}
