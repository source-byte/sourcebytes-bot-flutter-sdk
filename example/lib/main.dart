import 'package:example/stub.dart';
import 'package:flutter/material.dart';
import 'package:sourcebytes_bot_sdk/sourcebytes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SourceBytesBot Example',
      debugShowCheckedModeBanner: false,
      home: ExampleScreen(),
    );
  }
}

class ExampleScreen extends StatefulWidget {
  const ExampleScreen({super.key});

  @override
  State<ExampleScreen> createState() => _ExampleScreenState();
}

class _ExampleScreenState extends State<ExampleScreen> {
  @override
  Widget build(BuildContext context) {
    return SourceBytesBot(
      userId: userId,
      botId: botId,
      onBotMessage: (message) {},
      sendMessageOnTap: (message) {},
      onLogin: (email, password) {},
      showWelcomeScreen: false,
      baseUrl: 'https://dev.sourcebytes.ai/api/v1',
    );
  }
}
