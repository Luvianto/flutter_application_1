import 'package:flutter/material.dart';
import 'package:css_colors/css_colors.dart';
import 'package:path/path.dart' as p;
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('flutter.dev'),
        ),
        body: const TextButtons(),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;
  const Heading({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
    );
  }
}

class TextButtons extends StatelessWidget {
  const TextButtons({super.key});

  launchURL() {
    launchUrl(p.toUri('https://flutter.dev'));
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextButton(
            style: TextButton.styleFrom(
                foregroundColor: CSSColors.aquamarine,
                padding: const EdgeInsets.all(16.0)),
            onPressed: launchURL,
            child: const Heading(text: 'flutter.dev')));
  }
}
