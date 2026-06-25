import 'package:flutter/material.dart';
import 'package:belanja/route/go_router.dart';   // Import go_router

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(              
      title: 'Belanja App - Go Router',
      debugShowCheckedModeBanner: false,
      routerConfig: AppRouter.router,       // konfigurasi router dari AppRouter
      theme: ThemeData(
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
    );
  }
}