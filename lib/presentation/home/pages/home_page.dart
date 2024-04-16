import 'package:flutter/material.dart';
import 'package:nutrimate/presentation/home/widgets/chat_widget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: Column(
            children: <Widget>[
              ChatWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
