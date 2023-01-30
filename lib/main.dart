import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (defaultTargetPlatform == TargetPlatform.android) {
      // Android specific code
      return materialWidget(context);
    } else if (defaultTargetPlatform == TargetPlatform.iOS) {
      //iOS specific code
      return cupertinoWidget(context);
    } else {
      //web or desktop specific code
      return materialWidget(context);
    }
  }
}

// Cupertino Widget
Widget cupertinoWidget(BuildContext context) {
  return const CupertinoApp(
    home: CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Material App Example"),
      ),
      child: Center(
        child: Text("Homepage"),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}

// Material Widget
Widget materialWidget(BuildContext context) {
  return MaterialApp(
    home: Scaffold(
      appBar: AppBar(
        title: const Text("Material App Example"),
      ),
      body: const Center(
        child: Text("Homepage"),
      ),
    ),
    debugShowCheckedModeBanner: false,
  );
}
