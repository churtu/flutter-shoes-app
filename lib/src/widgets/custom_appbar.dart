import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget {
  final String texto;
  const CustomAppbar({super.key, required this.texto});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        margin: const EdgeInsets.only(top:30),
        width: double.infinity,
        child: Row(
          children: [
            Text(
              texto,
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 30
              ),
            ),
            const Spacer(),
            const Icon(Icons.search, size: 30)
          ],
        ),
      ),
    );
  }
}