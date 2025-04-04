// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:pc_shopping_application/screens/account_screen/accountscreen.dart';
import 'package:pc_shopping_application/screens/auth_ui/home/home.dart';
import 'package:pc_shopping_application/screens/cart_screen/cart_screen.dart';
import 'package:pc_shopping_application/screens/order_screen/order_screen.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

class CustomBottomBar extends StatefulWidget {
  const CustomBottomBar({
    final Key? key,
  }) : super(key: key);

  @override
  _CustomBottomBarState createState() => _CustomBottomBarState();
}

class _CustomBottomBarState extends State<CustomBottomBar> {
  final PersistentTabController _controller = PersistentTabController();
  final bool _hideNavBar = false;

  List<Widget> _buildScreens() => [
    const Home(),
    const CartScreen(),
    const OrderScreen(),
    const AccountScreen(),
  ];

  List<PersistentBottomNavBarItem> _navBarsItems() => [
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.home),
      inactiveIcon: const Icon(Icons.home_outlined),
      title: "Home",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.shopping_cart),
      inactiveIcon: const Icon(Icons.shopping_cart_outlined),
      title: "Cart",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.circle_rounded),
      inactiveIcon: const Icon(Icons.circle_outlined),
      title: "Orders",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
    PersistentBottomNavBarItem(
      icon: const Icon(Icons.person),
      inactiveIcon: const Icon(Icons.person_outline),
      title: "Account",
      activeColorPrimary: Colors.white,
      inactiveColorPrimary: Colors.white,
    ),
  ];

  @override
  Widget build(final BuildContext context) => Scaffold(
    body: PersistentTabView(
      context,
      controller: _controller,
      screens: _buildScreens(),
      items: _navBarsItems(),
      resizeToAvoidBottomInset: true,
      navBarHeight: MediaQuery.of(context).viewInsets.bottom > 0
          ? 0.0
          : kBottomNavigationBarHeight,
      bottomScreenMargin: 0,

      backgroundColor: Theme.of(context).primaryColor,
      hideNavigationBar: _hideNavBar,
      decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
      itemAnimationProperties: const ItemAnimationProperties(
        duration: Duration(milliseconds: 400),
        curve: Curves.ease,
      ),
      screenTransitionAnimation: const ScreenTransitionAnimation(
        animateTabTransition: true,
      ),
      navBarStyle:
      NavBarStyle.style1, // Choose the nav bar style with this property
    ),
  );
}




//updated code
//
// // ignore_for_file: library_private_types_in_public_api
//
// import 'package:flutter/material.dart';
// import 'package:pc_shopping_application/screens/account_screen/accountscreen.dart';
// import 'package:pc_shopping_application/screens/auth_ui/home/home.dart';
// import 'package:pc_shopping_application/screens/cart_screen/cart_screen.dart';
// import 'package:pc_shopping_application/screens/order_screen/order_screen.dart';
// import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
// import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
//
// class CustomBottomBar extends StatefulWidget {
//   const CustomBottomBar({Key? key}) : super(key: key);
//
//   @override
//   _CustomBottomBarState createState() => _CustomBottomBarState();
// }
//
// class _CustomBottomBarState extends State<CustomBottomBar> {
//   final PersistentTabController _controller = PersistentTabController(initialIndex: 0);
//
//   List<Widget> _buildScreens() => [
//     const Home(),
//     const CartScreen(),
//     const OrderScreen(),
//     const AccountScreen(),
//   ];
//
//   List<PersistentBottomNavBarItem> _navBarsItems() => [
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.home),
//       inactiveIcon: const Icon(Icons.home_outlined),
//       title: "Home",
//       activeColorPrimary: Colors.white,
//       inactiveColorPrimary: Colors.white,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.shopping_cart),
//       inactiveIcon: const Icon(Icons.shopping_cart_outlined),
//       title: "Cart",
//       activeColorPrimary: Colors.white,
//       inactiveColorPrimary: Colors.white,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.list),
//       inactiveIcon: const Icon(Icons.list_outlined),
//       title: "Orders",
//       activeColorPrimary: Colors.white,
//       inactiveColorPrimary: Colors.white,
//     ),
//     PersistentBottomNavBarItem(
//       icon: const Icon(Icons.person),
//       inactiveIcon: const Icon(Icons.person_outline),
//       title: "Account",
//       activeColorPrimary: Colors.white,
//       inactiveColorPrimary: Colors.white,
//     ),
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: PersistentTabView(
//         context,
//         controller: _controller,
//         screens: _buildScreens(),
//         items: _navBarsItems(),
//         resizeToAvoidBottomInset: true,
//         backgroundColor: Theme.of(context).primaryColor,
//         decoration: const NavBarDecoration(colorBehindNavBar: Colors.indigo),
//
//         // ✅ FIX: Hide Navigation Bar When Keyboard is Open
//         navBarVisibility: (context) {
//           return MediaQuery.of(context).viewInsets.bottom == 0;
//         },
//
//         // ✅ FIX: Removed Deprecated Properties
//         navBarStyle: NavBarStyle.style1, // Nav bar styling
//       ),
//     );
//   }
// }
