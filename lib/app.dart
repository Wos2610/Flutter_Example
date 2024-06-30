import 'package:dio_example/presentation/login/login_page.dart';
import 'package:dio_example/presentation/native/native_page.dart';
import 'package:dio_example/utils/routes/routes.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const NativePage(),
      initialRoute: AppRoute.native,
      onGenerateRoute: AppRoute.getAppPage,
    );
  }
}