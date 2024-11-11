import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List<String> originList = [
    "Apple",
    "Samsung",
    "Xiaomi",
    "Redmi",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: ListView.separated(
          padding: const EdgeInsets.symmetric(vertical: 8),
          itemBuilder: (context, index) {
            return Container(
              height: 50,
              color: Colors.white,
              child: Row(
                children: [
                  const Icon(Icons.image, size: 50),
                  const SizedBox(width: 10), // Jarak antara ikon dan teks
                  Text(
                    originList[index],
                    style: const TextStyle(color: Colors.black),
                  ),
                ],
              ),
            );
          },
          separatorBuilder: (context, index) {
            return const Divider(
              height: 1,
              color: Colors.grey,
            );
          },
          itemCount: originList.length,
        ),
      ),
    );
  }
}
