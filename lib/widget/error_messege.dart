import 'package:flutter/material.dart';

class ErrorMessege extends StatelessWidget {
  const ErrorMessege({super.key});
  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Make sure you are connected to the Internet',
        style: TextStyle(color: Colors.black),
      ),
    );
  }
}
