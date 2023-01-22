import 'package:flutter/material.dart';
import 'package:webtton_app/screens/home_screen.dart';
import 'package:webtton_app/services/api_services.dart';

void main() {
  ApiServices.getTodaysToons();
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}
