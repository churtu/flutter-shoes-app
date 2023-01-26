import 'package:adv_shoes_app/src/pages/pages.dart';
import 'package:adv_shoes_app/src/providers/zapato_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(const AppState());

class AppState extends StatelessWidget {
  const AppState({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => ZapatoProvider()
        )
      ],
      child: const ShoesApp(),
    );
  }
}

class ShoesApp extends StatelessWidget {
  const ShoesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Shoes App',
      home: ZapatoPage()
    );
  }
}