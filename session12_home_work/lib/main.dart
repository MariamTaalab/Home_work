import 'package:flutter/material.dart';
import 'widgets/welcome_card.dart';
import 'widgets/quick_state_grid.dart';
import 'widgets/feature_list.dart';
import 'widgets/button_button.dart';
void main() {
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Color.fromARGB(255, 250, 238, 251),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            WelcomeCard(),
            const SizedBox(height: 5.0),
            QuickStateGrid(),
            const SizedBox(height: 5.0),
            FeatureList(),
            const Spacer(),
            const Button(),
          ],
        ),
      ),
    );
  }
}
