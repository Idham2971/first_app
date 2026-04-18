import 'package:flutter/material.dart';
// Import file widget dan detail screen Anda
import '../widgets/task_card.dart';
import 'detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Data dummy untuk daftar tugas
    final List<String> tasks = [
      "Selesaikan Laporan Magang",
      "Belajar State Management Flutter",
      "Persiapan Presentasi UTS",
      "Olahraga Sore",
      "Beli Kebutuhan Mingguan",
      "Review Pull Request Tim",
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Task Management"),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.account_circle),
            onPressed: () {}, // Opsional untuk tambahan interaksi
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          // --- LOGIKA RESPONSIVE ---
          // Jika lebar layar > 600px (Tablet/Web), tampilkan Grid 2 atau 3 kolom
          if (constraints.maxWidth > 600) {
            return GridView.builder(
              padding: const EdgeInsets.all(16),
              itemCount: tasks.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: constraints.maxWidth > 900 ? 3 : 2,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                childAspectRatio: 2.5, // Menjaga kartu tidak terlalu tinggi
              ),
              itemBuilder: (context, index) {
                return TaskCard(
                  title: tasks[index],
                  onTap: () => _navigateToDetail(context, tasks[index]),
                );
              },
            );
          }
          // --- TAMPILAN MOBILE ---
          // Jika layar kecil, gunakan ListView standar
          else {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 10),
              itemCount: tasks.length,
              itemBuilder: (context, index) {
                return TaskCard(
                  title: tasks[index],
                  onTap: () => _navigateToDetail(context, tasks[index]),
                );
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Contoh aksi tambahan (opsional)
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text("Fitur Tambah Task akan datang!")),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }

  // Fungsi Helper untuk Navigasi (Triggered by user interaction)
  void _navigateToDetail(BuildContext context, String taskTitle) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => DetailScreen(taskTitle: taskTitle),
      ),
    );
  }
}
