import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_rust_bridge_practice/src/rust/api/simple.dart';
import 'package:flutter_rust_bridge_practice/src/rust/frb_generated.dart';
import 'package:flutter_rust_bridge_practice/src/rust/api/functions/hello.dart';

Future<void> main() async {
  await RustLib.init();
  final result = await hello(a: "Hello! ");
  log(result);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('flutter_rust_bridge quickstart')),
        body: Center(
          child: Text('Action: Call Rust `greet("Tom")`\nResult: `${greet(name: "Tom")}`'),
        ),
      ),
    );
  }
}
