import 'package:flutter/material.dart';
import 'package:mfi/home_view_body.dart';
import 'package:webview_flutter/webview_flutter.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  WebViewController controller = WebViewController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          controller.reload();
        },
        backgroundColor: Colors.deepPurple,
        shape: const CircleBorder(),
        child: const Icon(Icons.replay_outlined, color: Colors.white),
      ),
      body: HomeViewBody(
        controller: controller,
      ),
    );
  }
}
