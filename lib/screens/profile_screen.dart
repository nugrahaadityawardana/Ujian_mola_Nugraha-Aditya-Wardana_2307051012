import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  static const String route = '/profile';

  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Profile'),
      ),
      body: SingleChildScrollView( //  Tambahan untuk mencegah overflow
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 24),

            // Foto profil
           const CircleAvatar(
  radius: 48,
  backgroundImage: AssetImage('assets/photo_profile.jpg'),
),

            const SizedBox(height: 16),
            const Text(
              'Graha_aj',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const Text(
              'nugraha@example.com',
              style: TextStyle(color: Colors.grey),
            ),

            const SizedBox(height: 24),

            // Kartu informasi profil
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
              elevation: 2,
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  children: const [
                    ListTile(
                      leading: Icon(Icons.school, color: Colors.blue),
                      title: Text('Pendidikan'),
                      subtitle: Text('Universitas Los Angeles'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.location_on, color: Colors.blue),
                      title: Text('Alamat'),
                      subtitle:
                          Text('Elephan City'),
                    ),
                    Divider(),
                    ListTile(
                      leading: Icon(Icons.info, color: Colors.blue),
                      title: Text('Bio'),
                      subtitle: Text('Not_Bad'),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 30),

            // Tombol kembali ke dashboard
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 50),
                backgroundColor: const Color(0xFF0084FF),
              ),
              onPressed: () {
                Navigator.pushReplacementNamed(context, '/dashboard');
              },
              child: const Text('Kembali ke Dashboard'),
            ),

            const SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
