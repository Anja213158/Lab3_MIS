import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/random_joke_screen.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Joke App',
      theme: ThemeData(primarySwatch: Colors.blue),
      initialRoute: '/',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Firebase Connected!'),
        ),
        body: Center(child: Text('Firebase is set up!')),
      ),
      routes: {
        '/': (context) => HomeScreen(),
        '/random-joke': (context) => RandomJokeScreen(),
      },
    );
  }
}
