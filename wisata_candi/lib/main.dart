import 'package:flutter/material.dart';
import 'package:wisata_candi/data/candi_data.dart';
import 'package:wisata_candi/detail_screen.dart';
import 'package:wisata_candi/profile_screen.dart';
import 'package:wisata_candi/screens/favorite_screen.dart';
import 'package:wisata_candi/screens/home_screen.dart';
import 'package:wisata_candi/search_screen.dart';
import 'package:wisata_candi/sign_up_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Wisata Candi',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      //     home: DetailScreen(
      //   candi: candiList[0],
      // )
      // home: ProfileScreen(),
      // home: SearchScreen(),
      //
      // home: MainScreen()
      home: SignUpScreen(),
    );
  }
}

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  //TODO 1: Dklarasi Variabel
  int _currentIndex = 0;
  final List<Widget> _children = [
    const HomeScreen(),
    const SearchScreen(),
    const FavoriteScreen(),
    const ProfileScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        //TODO 2: Buat properti body berupa widget yang ditampilkan
        body: _children[_currentIndex],
        //TODO 3: Buat properti BottomnavigationBar dengan nilai Theme
        bottomNavigationBar: Theme(
          //TODO 4: Buat data dan child dari Theme
          data: Theme.of(context).copyWith(canvasColor: Colors.deepPurple[50]),
          child: BottomNavigationBar(
            currentIndex: _currentIndex,
            onTap: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
            items: const [
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home,
                    color: Colors.deepPurple,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.search,
                    color: Colors.deepPurple,
                  ),
                  label: 'Search'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.favorite,
                    color: Colors.deepPurple,
                  ),
                  label: 'Favorite'),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.person,
                    color: Colors.deepPurple,
                  ),
                  label: 'Profile'),
            ],
            selectedItemColor: Colors.deepPurple,
            unselectedItemColor: Colors.deepPurple[100],
            showUnselectedLabels: true,
          ),
        ));
  }
}
