import 'package:flutter/material.dart';

class ErrorScreen extends StatefulWidget {
  const ErrorScreen(AsyncSnapshot<Object?> snapshot, {Key? key})
      : super(key: key);

  @override
  State<ErrorScreen> createState() => _ErrorScreenState();
}

class _ErrorScreenState extends State<ErrorScreen> {
  late AsyncSnapshot<Object?> snapshot = snapshot;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      child: Column(children: [
        Text("Error ${snapshot.error}"),
      ]),
    ));
  }
}
