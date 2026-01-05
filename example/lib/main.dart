import 'package:flutter/material.dart';
import 'package:gcc_currency/gcc_currency.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(GCCCurrencyIcon.aed, size: 24),
              const SizedBox(width: 8),
              const Text('100'),
            ],
          ),
        ),
      ),
    );
  }
}
