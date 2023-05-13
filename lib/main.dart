import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:storage_app/pages/introduction_page.dart';


final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp(const ProviderScope(
    child: MaterialApp(home: IntroductionPage()),
  ));
}

