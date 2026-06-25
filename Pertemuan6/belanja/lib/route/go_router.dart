import 'package:flutter/material.dart';
import 'package:belanja/page/home_page.dart';
import 'package:belanja/page/item_page.dart';
import 'package:go_router/go_router.dart';                            // Import GoRouter package
import 'package:belanja/models/item.dart';

class AppRouter {
  static final _router = GoRouter(                                   // Konfigurasi GoRouter
    initialLocation: '/',                                           // Route awal  
    routes: [
      //HomePage route
      GoRoute(                                                      // Definisi untuk HomePage
        path: '/',                                                  // Path untuk HomePage
        builder: (context, state) => MyHomePage()),                 // Builder untuk HomePage                       
      
      //ItemPage route
      GoRoute(                                                      // Definisi untuk ItemPage
        path: '/item',                                              // Path sederhana untuk ItemPage
        builder: (context, state) {
          final item = state.extra;
          if (item is Item) {
            return MyItemPage(item: item);                          // Passing data Item ke ItemPage
          }
          return Scaffold(
            body: Center(child: Text('Error: Item data tidak valid')),
          );
        },
      ),
    ],
    // Error handling
    errorBuilder: (context, state) => Scaffold(                     // Error Handling
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.error_outline, size: 64, color: Colors.red),
            SizedBox(height: 16),
            Text(
              'Page not found!',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text('Error: ${state.error}'),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () => context.go('/'),                     // Navigasi kembali ke HomePage
              child: Text('Go Home'),
            ),
          ],
        ),
      ),
    ),
  );

  static GoRouter get router => _router;              // Getter untuk mengakses router di seluruh aplikasi
}