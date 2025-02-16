import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int _currentIndex = 3;

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: _onTabTapped,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'الرئيسية'),
          BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today), label: 'المواعيد'),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications), label: 'الإشعارات'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'حسابي'),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 14),
                const Text(
                  'الملف الشخصي',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue),
                ),
                const SizedBox(height: 14),
                const CircleAvatar(
                  radius: 50,
                  backgroundImage: AssetImage('images/mo8.jpg'),
                ),
                const SizedBox(height: 14),
                const Text(
                  'محمد المهنا ',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 55),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    leading: const Icon(Icons.edit),
                    title: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('تعديل المعلومات'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                const SizedBox(height: 49),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    leading: const Icon(Icons.language),
                    title: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('اللغة'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                const SizedBox(height: 42),
                Directionality(
                  textDirection: TextDirection.rtl,
                  child: ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Align(
                      alignment: Alignment.centerRight,
                      child: Text('الإعدادات'),
                    ),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 18),
                    onTap: () {},
                    contentPadding: const EdgeInsets.symmetric(horizontal: 12),
                  ),
                ),
                // const Spacer(),
                TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red.withOpacity(0.1),
                    side: const BorderSide(color: Colors.red),
                    padding: const EdgeInsets.symmetric(
                        vertical: 14, horizontal: 60),
                  ),
                  child: const Text(
                    'تسجيل الخروج',
                    style: TextStyle(color: Colors.red, fontSize: 18),
                  ),
                ),
                const SizedBox(height: 24),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
