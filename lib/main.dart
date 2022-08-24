import 'package:flutter/material.dart';
import 'package:tast_intern/pages/home_page.dart';
import 'package:tast_intern/pages/transaction_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'InternTask',
      theme: ThemeData(
          buttonColor: Color(0xFF303F9F),
          appBarTheme: AppBarTheme(
            color: Colors.white,
          )),
      routes: {
        HomePage.namedRoute: (context) => const HomePage(),
        TransactionPage.namedRoute: (context) => const TransactionPage(),
      },
      home: HomePage(),
    );
  }
}
