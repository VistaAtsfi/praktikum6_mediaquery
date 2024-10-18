import 'package:flutter/material.dart';

class MySnackbarPage extends StatefulWidget {
  const MySnackbarPage({super.key});

  @override
  State<MySnackbarPage> createState() => _MySnackbarPageState();
}

class _MySnackbarPageState extends State<MySnackbarPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Modul 6 Snack Bar"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: Text(
            "Tampilkan SnackBar",
            style: Theme.of(context).textTheme.bodyLarge,
          ),
        ),
      ),
    );
  }
}
