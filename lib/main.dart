import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_dto_test_code/ui/weather_view_model.dart';

import 'ui/weather_screen.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (_) => WeatherViewModel(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      home: WeatherScreen(),
    );
  }
}