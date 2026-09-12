import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

void main() {
  runApp(const DadbanApp());
}

class DadbanApp extends StatelessWidget {
  const DadbanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'دادبان',
      debugShowCheckedModeBanner: false,
      locale: const Locale('fa', 'IR'),
      supportedLocales: const [Locale('fa', 'IR')],
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: const Color(0xFF1B3B6F),
      ),
      home: const HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('دادبان | دستیار وکیل'),
        backgroundColor: const Color(0xFF1B3B6F),
        foregroundColor: Colors.white,
      ),
      body: const Center(
        child: Text(
          'به نرم‌افزار دادبان خوش آمدید.\nپروژه با موفقیت بیلد شد.',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 18, height: 1.8),
        ),
      ),
    );
  }
}
