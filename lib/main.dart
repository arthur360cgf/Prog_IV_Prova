import 'package:flutter/material.dart';

void main() {
  runApp(const JokenPo());
}

class JokenPo extends StatelessWidget {
  const JokenPo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'JokenPo',
      theme: ThemeData.dark().copyWith(
      ),
    );
  }
}