import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  final String taskTitle;
  const DetailScreen({super.key, required this.taskTitle});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Task Detail")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Judul Tugas:", style: TextStyle(color: Colors.grey[600])),
            Text(taskTitle, style: Theme.of(context).textTheme.headlineMedium),
            const Divider(height: 30),
            const Text(
              "Deskripsi:",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Text(
              "Ini adalah deskripsi detail untuk tugas yang harus diselesaikan segera sesuai dengan deadline yang diberikan.",
            ),
            const Spacer(),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                ),
                onPressed: () => Navigator.pop(context),
                child: const Text(
                  "Tandai Selesai",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
