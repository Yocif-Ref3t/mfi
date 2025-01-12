import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeViewBody extends StatefulWidget {
  final WebViewController controller;
  const HomeViewBody({super.key, required this.controller});

  @override
  State<HomeViewBody> createState() => _HomeViewBodyState();
}

class _HomeViewBodyState extends State<HomeViewBody> {
  bool isLoading = false;

  @override
  void initState() {
    widget.controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      ..setNavigationDelegate(NavigationDelegate(
        onPageStarted: (url) {
          isLoading = true;
          setState(() {});
        },
        onPageFinished: (url) {
          isLoading = false;
          setState(() {});
        },
      ))
      ..loadRequest(Uri.parse('https://myu.mans.edu.eg'));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: !isLoading
          ? WebViewWidget(
              controller: widget.controller,
            )
          : Center(
              child: Image.asset(
              "assets/loading icon.gif",
              height: 150,
            )),
    );
  }
}
