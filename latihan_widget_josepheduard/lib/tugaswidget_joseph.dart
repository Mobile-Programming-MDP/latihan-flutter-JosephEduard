import 'package:flutter/material.dart';

class TugasWidget extends StatelessWidget {
  const TugasWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Galeri Foto',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: Column(
        children: [
          Image.network(
            'https://picsum.photos/id/88/1200/700',
          ),
          const SizedBox(height: 20),
          const Center(
            child: Text(
              'Jalan Di Barcelona',
              style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                  fontWeight: FontWeight.bold),
            ),
          ),
          const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('     '),
              Icon(Icons.location_pin, color: Colors.green),
              Text('Lokasi: Barcelona, Spanyol',
                  style: TextStyle(fontSize: 14)),
            ],
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('     '),
              Icon(Icons.date_range, color: Colors.blue),
              Text('Publikasi: 13 Agustus 2013',
                  style: TextStyle(fontSize: 14)),
            ],
          ),
          const Divider(
            color: Colors.grey,
            height: 20,
            thickness: 2,
            indent: 20,
            endIndent: 20,
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text('     '),
              Text(
                'Deskripsi',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'Sebuah persimpangan jalan di Barcelona, Spanyol. Foto ini menampilkan berbagai kendaraan yang bergerak dalam arah yang berbeda, menciptakan pemandangan yang sibuk dan energik.',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
