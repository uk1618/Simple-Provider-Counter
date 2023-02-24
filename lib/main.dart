import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_counter/providers/counter_provider.dart';
import 'package:provider_counter/screens/CounterPage.dart';
import 'screens/Homepage.dart';

void main()  => runApp(MultiProvider(
  providers: [
  ChangeNotifierProvider(create: (context) => CounterProvider(),),
  ],
  child: const MyApp(),
  ));

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(initialRoute: "/", routes: {
      "/": (context) => const HomePage(),
      "/counter": (context) => const CounterPage(),
    },
    debugShowCheckedModeBanner: false,
    );
  }
}
