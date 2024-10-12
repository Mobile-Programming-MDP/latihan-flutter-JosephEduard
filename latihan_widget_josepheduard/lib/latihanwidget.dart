import 'package:flutter/material.dart';

class WidgetDemo extends StatelessWidget {
  const WidgetDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan Widget Joseph'),
      ),
      body: Column(
        children: [
          Container(
            height: 200,
            //width: double.infinity,
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blue,
            child: const Center(
              child: Text(
                'Joseph Eduard Uly Loni (ini adalah container)',
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Padding(
              padding: EdgeInsets.all(16),
              child: Text('Ini adalah Tombol Elevated'),
            ),
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Icon(Icons.star, color: Colors.yellow),
              Text('Rating 5', style: TextStyle(fontSize: 14)),
            ],
          ),
          Image.network(
            'https://picsum.photos/id/26/1200/700',
            width: double.infinity,
            height: 300,
          ),
        ],
      ),
    );
  }
}
