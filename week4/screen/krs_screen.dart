import 'package:flutter/material.dart';
import 'krs_detail_screen.dart';

class KrsScreen extends StatefulWidget {
  const KrsScreen({super.key});

  @override
  State<KrsScreen> createState() => _KrsScreenState();
}

class _KrsScreenState extends State<KrsScreen> {
  int selectedCredits = 0;

  void addCredits() {
    setState(() {
      selectedCredits += 3;
    });
  }

  void removeCredits() {
    if (selectedCredits > 0) {
      setState(() {
        selectedCredits -= 3;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Kartu Rencana Studi"),
        backgroundColor: Colors.blueAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Total SKS Diambil:",
              style: TextStyle(fontSize: 18),
            ),
            Text(
              "$selectedCredits",
              style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: addCredits,
                  child: const Text("Ambil Matkul (+3 SKS)"),
                ),
                const SizedBox(width: 10),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.redAccent),
                  onPressed: removeCredits,
                  child: const Text("Batal (-3 SKS)"),
                ),
              ],
            ),

            const SizedBox(height: 30),

            ElevatedButton.icon(
              icon: const Icon(Icons.check_circle),
              label: const Text("Lihat Ringkasan KRS"),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 15),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => KrsDetailScreen(totalCredits: selectedCredits),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}