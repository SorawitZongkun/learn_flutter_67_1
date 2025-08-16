import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset("assets/images/flower.jpg", width: 200, height: 200),
        const SizedBox(height: 20),
        Image.network(
          "https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg",
          width: 200,
          height: 200,
        ),
      ],
    );
  }
}
