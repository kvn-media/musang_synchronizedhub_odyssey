import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
// import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/cart_screen.dart';
import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/home_screen.dart';
import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/search_screen.dart';
import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/product_screen.dart';
import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/account_screen.dart';
import 'package:musang_syncronizehub_odyssey/views/buyers/nav_screens/category_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _pageIndex = 0;

  List<Widget> _pages = [
    HomeScreen(),
    CategoryScreen(),
    ProductScreen(),
    // CartScreen(),
    SearchScreen(),
    AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Colors.red.shade900,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/explore.svg',
              width: 20,
            ),
            label: 'CATEGORIES',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              'assets/icons/product.svg',
              width: 20,
            ),
            label: 'PRODUCTS',
          ),
          // BottomNavigationBarItem(
          //   icon: SvgPicture.asset('assets/icons/cart.svg'),
          //   label: 'CART',
          // ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/search.svg'),
            label: 'SEARCH',
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset('assets/icons/account.svg'),
            label: 'ACCOUNT',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}