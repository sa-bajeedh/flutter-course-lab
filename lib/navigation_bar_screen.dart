import 'package:flutter/material.dart';
import 'package:saeed_mahfouz_app/acount_information_screen.dart';
import 'package:saeed_mahfouz_app/home_page_screen.dart';
import 'package:saeed_mahfouz_app/search_screen.dart';
import 'package:saeed_mahfouz_app/settings_screen.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _navigationBarIndex=0;

  List<Widget> _screens=[
    HomePageScreen(),
    SearchScreen(),
    SettingsScreen(),
    AcouuntInformationScreen(),
    
  ];

  String _getTitle(index)
  {
    switch(index)
    {
      case 0: return "الصفحة الرئيسية";
      case 1: return "بحث";
      case 2: return "الإعدادات";
      case 3: return "معلومات الحساب";
      default : return "غير معرف";
    }

   
  }
  @override
  Widget build(BuildContext context) {
    return Directionality( 
      textDirection: TextDirection.rtl,
      child: Scaffold(
        
        appBar: AppBar(
          title: Text(_getTitle(_navigationBarIndex),style: TextStyle(color: Colors.white),),
          toolbarHeight: 80,
          backgroundColor: Colors.black,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(bottomLeft: Radius.circular(25))
          ),
        ),
        body: IndexedStack(
          index: _navigationBarIndex,
          children: _screens,
        ),
        bottomNavigationBar: BottomNavigationBar(
          
          onTap: (index){
            setState(() {
              _navigationBarIndex=index;
            });
          },
          currentIndex:_navigationBarIndex ,
          selectedItemColor: Colors.black,
          selectedFontSize: 14,
          unselectedItemColor: Colors.grey[600],
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home),label: "الصفحىة الرئيسة "),
            BottomNavigationBarItem(icon: Icon(Icons.search),label: "بحث "),
            BottomNavigationBarItem(icon: Icon(Icons.settings),label: "الإعدادات "),
            BottomNavigationBarItem(icon: Icon(Icons.account_box),label: "الحساب الشخصي ")
          ]
          ),
      ),
    );
  }
}