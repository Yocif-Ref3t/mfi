import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:mfi/home_view.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Colors.deepPurple.withOpacity(0.8),
    statusBarIconBrightness: Brightness.light,
  ));
  runApp(const MFI());
}

class MFI extends StatelessWidget {
  const MFI({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Myu Fixed For IOS',
      home: HomeView(),
    );
  }
}
