import 'package:flutter/material.dart';
import 'package:wisata_candi/models/candi.dart';
import 'package:cached_network_image/cached_network_image.dart';

class DetailScreen extends StatelessWidget {
  final Candi candi;
  const DetailScreen({super.key, required this.candi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          //DetailHeader
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    candi.imageAsset,
                    height: 300,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.deepPurple[100]?.withOpacity(0.8),
                        shape: BoxShape.circle),
                    child: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      color: Colors.white,
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )),
            ],
          ),
          //DetailInfo
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      candi.name,
                      style: const TextStyle(
                          fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.favorite_border))
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.place,
                      color: Colors.red,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const SizedBox(
                      width: 78,
                      child: Text(
                        'Lokasi',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(': ${candi.location}'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.calendar_month,
                      color: Colors.blue,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const SizedBox(
                      width: 78,
                      child: Text(
                        'Dibangun',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(': ${candi.built}'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.house,
                      color: Colors.green,
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    const SizedBox(
                      width: 78,
                      child: Text(
                        'Tipe',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(': ${candi.type}'),
                  ],
                ),
                const SizedBox(
                  height: 16,
                ),
                Divider(
                  color: Colors.deepPurple.shade100,
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  candi.description,
                  style: const TextStyle(fontSize: 16),
                  textAlign: TextAlign.justify,
                ),
                const SizedBox(
                  height: 16,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(color: Colors.deepPurple.shade100),
                const Text(
                  'Galeri',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: candi.imageUrls.length,
                    itemBuilder: (context, index) {
                      return Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: Colors.deepPurple.shade100,
                                        width: 2)),
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: CachedNetworkImage(
                                    imageUrl: candi.imageUrls[index],
                                    width: 120,
                                    height: 120,
                                    fit: BoxFit.cover,
                                    placeholder: (context, url) => Container(
                                      width: 120,
                                      height: 120,
                                      color: Colors.deepPurple[50],
                                    ),
                                    errorWidget: (context, url, error) =>
                                        const Icon(Icons.error),
                                  ),
                                ),
                              )));
                    },
                  ),
                ),
                const SizedBox(
                  height: 4,
                ),
                const Text(
                  'Tap untuk memperbesar',
                  style: TextStyle(fontSize: 12, color: Colors.black54),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}
