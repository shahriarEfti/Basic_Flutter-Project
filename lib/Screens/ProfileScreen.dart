import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _buildProfileHeader(),
            SizedBox(height: 20),
            _buildProfileOption(
              icon: Icons.history,
              label: 'Booking History',
              onTap: () {
                // Navigate to order history page
              },
            ),
            Divider(height: 30),
            _buildProfileOption(
              icon: Icons.location_on,
              label: 'Saved Addresses',
              onTap: () {
                // Navigate to saved addresses page
              },
            ),
            Divider(height: 30),
            _buildProfileOption(
              icon: Icons.payment,
              label: 'Transaction',
              onTap: () {
                // Navigate to transaction page
              },
            ),
            Divider(height: 30),
            _buildProfileOption(
              icon: Icons.settings,
              label: 'Settings',
              onTap: () {
                // Navigate to settings page
              },
            ),
            Divider(height: 30),
            _buildProfileOption(
              icon: Icons.exit_to_app,
              label: 'Log Out',
              onTap: () {
                // Implement log-out functionality here
              },
            ),
          ],
        ),
      ),
      backgroundColor: Colors.grey.shade200, // Custom background color
    );
  }

  Widget _buildProfileHeader() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Stack(
          children: [
            CircleAvatar(
              radius: 90,
              // Replace this with the user's profile image
              backgroundImage: AssetImage("assets/images/efti.jpg"),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.deepOrange,
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.edit,
                    color: Colors.white,
                  ),
                  onPressed: () {
                    // Implement edit functionality here
                  },
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 20),
        Text(
          'Shahriar Efti', // Replace with user's name
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Text(
          'shahriar123@gmail.com', // Replace with user's email
          style: TextStyle(fontSize: 16, color: Colors.grey),
        ),
      ],
    );
  }

  Widget _buildProfileOption({
    required IconData icon,
    required String label,
    required VoidCallback onTap,
  }) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 12.0),
        child: Row(
          children: [
            Icon(icon, size: 30, color: Colors.deepOrange), // Custom icon color
            SizedBox(width: 20),
            Text(
              label,
              style: TextStyle(fontSize: 18),
            ),
            Spacer(),
            Icon(Icons.arrow_forward_ios, color: Colors.deepOrange), // Custom icon color
          ],
        ),
      ),
    );
  }
}
