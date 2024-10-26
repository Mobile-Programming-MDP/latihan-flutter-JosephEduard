import 'package:flutter/material.dart';

class LatihanScreen extends StatelessWidget {
  const LatihanScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Latihan UTS'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Center(
                  child: Text(
                'INFORMATIKA',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21),
              )),
              const SizedBox(
                height: 8,
              ),
              Image.asset(
                "images/latihan.jpg",
                height: 250,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
              const SizedBox(
                height: 8,
              ),
              const Text("Universitas Multi Data Palembang",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 21)),
              const Text("Kota Palembang, Prov. Sumatera Selatan",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.red[900]),
                child: const Padding(
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: [
                      //TODO: baris berisi info
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          //kiri
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Status",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Aktif",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 8,
                                ),
                                Text(
                                  "Akreditasi",
                                  style: TextStyle(color: Colors.white),
                                ),
                                Text(
                                  "Unggul",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          ),
                          //kanan
                          Expanded(
                            child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Tanggal Berdiri",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "9 April 2021",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 8,
                                  ),
                                  Text(
                                    "Jumlah Mahasiswa",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  Text(
                                    "5000",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ]),
                          ),
                        ],
                      ),

                      //TODO: baris berisi kontak
                      SizedBox(
                        height: 16,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.phone,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "0711-376400",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.email_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "kuliah@mdp.ac.id",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                          SizedBox(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.link_rounded,
                                      color: Colors.white,
                                    ),
                                    SizedBox(
                                      width: 8,
                                    ),
                                    Text(
                                      "mdp.ac.id",
                                      style: TextStyle(color: Colors.white),
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.grey[200]),
                child: Padding(
                  padding: const EdgeInsets.all(16),
                  child: Column(children: [
                    const Row(
                      children: [
                        Text("Alamat",
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                            )),
                      ],
                    ),
                    const Row(
                      children: [
                        Text("Jl. Rajawali",
                            style: TextStyle(color: Colors.black)),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          color: Colors.red[500],
                        ),
                        width: double.infinity,
                        height: 50,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "Lihat Map",
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        )),
                  ]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
