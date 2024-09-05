import 'package:flutter/material.dart';

class ManegePage extends StatefulWidget {
  const ManegePage({super.key});

  @override
  State<ManegePage> createState() => _ManegePageState();
}

class _ManegePageState extends State<ManegePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
    );
  }
}
