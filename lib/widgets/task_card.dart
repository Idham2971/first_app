import 'package:flutter/material.dart';

class TaskCard extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const TaskCard({super.key, required this.title, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: ListTile(
        contentPadding: const EdgeInsets.all(12),
        leading: CircleAvatar(
          backgroundColor: Theme.of(context).colorScheme.primaryContainer,
          child: Icon(
            Icons.assignment,
            color: Theme.of(context).colorScheme.primary,
          ),
        ),
        title: Text(
          title,
          style: Theme.of(
            context,
          ).textTheme.bodyLarge?.copyWith(fontWeight: FontWeight.bold),
        ),
        subtitle: const Text("Ketuk untuk melihat detail"),
        trailing: const Icon(Icons.chevron_right),
        onTap: onTap, // Menjalankan navigasi yang dikirim dari Home
      ),
    );
  }
}
