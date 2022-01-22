import 'dart:io' show Platform;

import 'package:flutter/material.dart';
import 'package:imc/app/android/app.dart';
import 'package:imc/app/ios/app.dart';

void main() =>
    Platform.isIOS ? runApp(const IosApp()) : runApp(const AndroidApp());
