import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/counter_provider.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
              Text(
              '${Provider.of<CounterProvider>(context).counter}',
              style: const TextStyle(fontSize: 25),
            ),
            const SizedBox(
              height: 10,
            ),
            ElevatedButton(onPressed: () {
              Provider.of<CounterProvider>(context , listen: false).increment();
            }, child: const Icon(Icons.add)),
            const SizedBox(
              height: 10,
            ),
            OutlinedButton(onPressed: () {
              Provider.of<CounterProvider>(context , listen: false).decrement();
            }, child: const Icon(Icons.remove)),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(context, "/");
                },
                child: const Text(
                  'Home Page ->',
                  style: TextStyle(fontSize: 25),
                ))
          ],
        ),
      ),
    );
  }
}