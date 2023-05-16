import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:storage_app/pages/introduction_page.dart';
import 'package:storage_app/pages/main_page.dart';
import 'package:storage_app/pages/manage_page.dart';


final counterProvider = StateProvider<int>((ref) => 0);

void main() {
  runApp( ProviderScope(
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: IntroductionPage()
    ),
  ));
}

