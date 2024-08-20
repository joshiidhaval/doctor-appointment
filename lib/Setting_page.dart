import 'package:doctor_appointment/Profile_page.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text('Settings'),
      ),
      body: ListView(
        children: [
          GestureDetector(

          onTap: () {
    Navigator.pop(context);
    },
      child: GestureDetector(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
        },
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                gradient: LinearGradient(colors: [Colors.white, Colors.blue]),
              ),
              accountName: Text('Dr. Doctor Name',
              style: TextStyle(
                color: Colors.black,
              ),),
              accountEmail: Text('Profile',
                style: TextStyle(
                  color: Colors.black,
                ),),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/doctor2.jpeg'),
              ),
            ),
          ), ),
            SizedBox(height: 10),
          _buildGradientTile(
            icon: Icons.person,
            color1: Color(0xBDD4E8FF),
            color2: Colors.lightBlue,
            title: 'Profile',
            onTap: () {},
          ),
          SizedBox(height: 15),
          _buildGradientTile(
            icon: Icons.notifications,
            color1: Color(0xDBB2E5FF),
            color2: Colors.deepPurple,
            title: 'Notifications',
            onTap: () {},
          ),
          SizedBox(height: 15),
          _buildGradientTile(
            icon: Icons.lock,
            color1: Color(0xD2BBBBFF),
            color2: Colors.grey,
            title: 'Privacy',
            onTap: () {},
          ),
          SizedBox(height: 15),
          _buildGradientTile(
            icon: Icons.settings,
            color1: Color(0xA1CBA1FF),
            color2: Colors.lightGreen,
            title: 'General',
            onTap: () {},
          ),
          SizedBox(height: 15),
          _buildGradientTile(
            icon: Icons.info,
            color1: Color(0xD7CCB3FF),
            color2: Colors.deepOrange,
            title: 'About Us',
            onTap: () {},
          ),
          SizedBox(height: 15),
          _buildGradientTile(
            icon: Icons.logout,
            color1: Color(0xBD9794FF),
            color2: Colors.redAccent,
            title: 'Log Out',
            onTap: () {},
          ),

      ],),
    );
  }

  Widget _buildGradientTile({
    required IconData icon,
    required Color color1,
    required Color color2,
    required String title,
    required VoidCallback onTap,
  }) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [color1, color2],
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: ListTile(
        contentPadding: EdgeInsets.symmetric(horizontal: 16),
        leading: Icon(icon, color: color1),
        title: Text(title),
        trailing: Icon(Icons.arrow_forward_ios_sharp),
        onTap: onTap,
      ),
    );
  }
}
