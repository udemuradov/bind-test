import 'package:flutter/material.dart';
import 'package:testforwrok/ui/screen/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bind Test',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
            foregroundColor: Colors.black, backgroundColor: Colors.black),
      ),
      routes: {
        '/': (context) => HomeScreen(),
      },
      initialRoute: "/",
    );
  }
}
