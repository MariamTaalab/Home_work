import 'package:flutter/material.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Container(
                height: 180,
                width: double.infinity,
                color: const Color(0xFFE4F2FD),
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Container(
                    width: 20,
                    height: 20,
                    color: const Color(0xFFE0E0E0),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Container(
                      height: 20,
                      color: const Color(0xFFE0E0E0),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      children: [
                        Container(height: 50, color: const Color(0xFFA5D5A8)),
                        const SizedBox(height: 10),
                        Container(height: 50, color: const Color(0xFFA5D5A8)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(height: 110, color: const Color(0xFFFFCC80)),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(height: 110, color: const Color(0xFFFFCC80)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(height: 100, color: const Color(0xFFE1BEE8)),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Column(
                      children: [
                        Container(height: 48, color: const Color(0xFFCF93D9)),
                        const SizedBox(height: 4),
                        Container(height: 48, color: const Color(0xFFCF93D9)),
                      ],
                    ),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Container(height: 100, color: const Color(0xFFE1BEE8)),
                  ),
                  const SizedBox(width: 4),
                  Expanded(
                    child: Container(height: 100, color: const Color(0xFFF3E5F6)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Row(
                children: [
                  Expanded(
                    child: Container(height: 60, color: const Color(0xFFB5DCDD)),
                  ),
                  const SizedBox(width: 15),
                  Expanded(
                    child: Container(height: 60, color: const Color(0xFF7CCCC4)),
                  ),
                ],
              ),
              const SizedBox(height: 15),
              Container(
                height: 40,
                width: double.infinity,
                color: const Color(0xFFE0E0E0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}