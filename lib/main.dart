import 'package:flutter/material.dart';
import 'package:media_boster_aryan/Provider/Home_Provider.dart';
import 'package:media_boster_aryan/screen/Home_page.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(providers: [
    ChangeNotifierProvider(create: (context) => HomeProvider(),)
  ],child: const MyApp(),));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.blue,
          useMaterial3: true
      ),
      home: const HomePage(),
    );
  }
}
