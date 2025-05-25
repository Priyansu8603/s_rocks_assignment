import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:s_rocks_assignment/features/homescreen/Model/remote/HomeRepository.dart';
import 'package:s_rocks_assignment/features/homescreen/View/HomePage.dart';
import 'package:s_rocks_assignment/features/homescreen/ViewModel/HomeViewModel.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  final homeRepository = HomeRepository();

  runApp(
    MultiProvider(
    providers: [
      Provider<HomeRepository>(create: (_) => homeRepository),
      ChangeNotifierProvider<HomeViewModel>(
        create: (context) => HomeViewModel(homeRepository),
      ),
    ],
    child: const MyApp(),
  ),);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomePage(),
    );
  }
}
