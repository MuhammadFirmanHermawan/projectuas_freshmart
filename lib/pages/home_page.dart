import 'package:flutter/material.dart';
import 'package:freshmart/pages/store_page.dart';
import 'package:freshmart/theme.dart';
import 'package:freshmart/widget/category_item.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/home.png',
              width: 24,
            ),
            label: 'B eranda',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/add.png',
              width: 36,
            ),
            label: 'Add',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/user.png',
              width: 24,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(
          horizontal: 32,
        ),
        children: [
          const SizedBox(
            height: 60,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                'assets/freshmartlogo.png',
                width: 122,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            width: double.infinity,
            height: 146,
            padding: const EdgeInsets.only(
              top: 28,
              left: 36,
              right: 16,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(32),
              image: const DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(
                  'assets/background.png',
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          Center(
            child: Text(
              'Kategori',
              style: blackTextStyle.copyWith(
                fontSize: 18,
                fontWeight: black,
              ),
            ),
          ),
          const SizedBox(
            height: 28,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              CategoryItem(
                name: 'Buah',
                iconUrl: 'assets/buah.png',
              ),
              CategoryItem(
                name: 'Sayur',
                iconUrl: 'assets/sayur.png',
              ),
              CategoryItem(
                name: 'Daging',
                iconUrl: 'assets/ic_meats.png',
              ),
              CategoryItem(
                name: 'Telur',
                iconUrl: 'assets/ic_dairies.png',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
