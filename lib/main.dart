import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'models/quiz_model.dart';
import 'screens/home_screen.dart';
import 'screens/quiz_screen.dart';

void main() {
  runApp(const QuizApp());
}

class QuizApp extends StatelessWidget {
  const QuizApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => QuizModel(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Quiz App',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: 'PoppinsCustom',
        ),
        initialRoute: HomeScreen.routeName,
        routes: {
          HomeScreen.routeName: (_) => const HomeScreen(),
          QuizScreen.routeName: (_) => const QuizScreen(),
        },
      ),
    );
  }
}
