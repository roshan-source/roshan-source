import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:test_webview/screens/webview_screen.dart';



void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      getPages: [
        GetPage(name: '/', page: () => HomeScreen()),
        GetPage(
          name: '/webview',
          page: () => WebViewScreen(),
          binding: BindingsBuilder(() {
            // Get.lazyPut(() => WebViewScreenController());
          }),
        ),

      ],
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            // Navigate to WebView screen with a URL argument
            Get.toNamed('/webview',);
          },
          child: const Text('Welcome'),
        ),
      ),
    );
  }
}
