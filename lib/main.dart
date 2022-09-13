import 'package:flutter/material.dart';
import 'pages/order_page.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'SF Pro Text',
        backgroundColor: Color(0xffF4F5F9),
        scaffoldBackgroundColor: Color(0xffF4F5F9),
        primaryColor: Colors.white,
        appBarTheme: AppBarTheme(
          centerTitle: true,
          elevation: 0,
        ),
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child:
        TextButton(
          style: TextButton.styleFrom(
            backgroundColor: Colors.white,
            minimumSize: Size(50,24)//<-- SEE HERE
          ),

          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Order()));
          },
          child: const Text(
            'Order',
            style: TextStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}

