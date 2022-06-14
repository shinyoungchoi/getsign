# flutter_app3

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

-model 생성방법
model class위에 
import 'package:json_annotation/json_annotation.dart';
part '클래스명.g.dart';

@JsonSerializable()를 붙임.

터미널에서 flutter pub run build_runner build를 실행.
fromJson과 toJson을 해당 model class에서 호출해서 사용.