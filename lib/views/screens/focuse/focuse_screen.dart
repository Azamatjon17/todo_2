import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class FocuseScreen extends StatefulWidget {
  const FocuseScreen({super.key});

  @override
  State<FocuseScreen> createState() => _FocuseScreenState();
}

class _FocuseScreenState extends State<FocuseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Focus Mode"),
      ),
    );
  }
}
