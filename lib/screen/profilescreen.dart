import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});
Widget menuTile({
  required IconData icon,
  required String title,
  required String subtitle,
  Color iconColor = Colors.white,
  Color textColor = Colors.white,
}
)
{
  return ListTile(
    leading: Icon(
      icon,
      color: iconColor,
    ),
    title: Text(
      title,
      style: TextStyle(
        color: textColor,
        fontWeight: FontWeight.w600,
      ),
    ),
    subtitle: Text(
      subtitle,
      style: const TextStyle(
        color: Colors.white60,
      ),
    ),
    trailing: const Icon(
      Icons.arrow_forward_ios,
      color: Colors.white38,
      size: 16,
    ),
    onTap: (){},
  );
}
  @override
  Widget build(BuildContext context) {
    // ignore: unused_local_variable
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: const Color(0xFF07142D),
bottomNavigationBar: ConvexAppBar(backgroundColor: const Color.fromARGB(255, 0, 71, 129),
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'My space'),
      TabItem(icon: Icons.search, title: 'search'),
      TabItem(icon: Icons.message, title: 'Messages'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    onTap: (int i) {
  if (i == 4) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => const ProfileScreen(),
      ),
    );
  }
},
  ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 15,
            ),
            child: Column(
              children: [

                // Back Button
                Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    borderRadius: BorderRadius.circular(30),
                    child: Container(
                      height: 42,
                      width: 42,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.08),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Icon(
                        Icons.arrow_back_ios_new_rounded,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 25),

                
                Container(
                  height: 120,
                  width: 120,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(
                      color: const Color(0xFFD6A44C),
                      width: 3,
                    ),
                    image: const DecorationImage(
                      image: AssetImage(
                        "assets/image/profile.PNG",
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                const SizedBox(height: 18),

                // Name
                const Text(
                  "Arjun Kumar",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 8),

                
                const Text(
                  "AI & ML • 2rd Year",
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 6),

                
                const Text(
                  "arjun.1232@gmail.com",
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 35),

                
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: const Color(0xFF0B1D3D),
                    borderRadius: BorderRadius.circular(22),
                  ),
                  child: Column(
                    children: [

                      menuTile(
                        icon: Icons.person_outline,
                        title: "Personal Details",
                        subtitle: "Edit your profile information",
                      ),

                      const Divider(
                        color: Colors.white12,
                        height: 1,
                      ),

                      menuTile(
                        icon: Icons.menu_book_outlined,
                        title: "Reading Preferences",
                        subtitle: "Manage your interests",
                        ),

                      const Divider(
                        color: Colors.white12,
                        height: 1,
                      ),
                      menuTile(
                        icon: Icons.settings_outlined,
                        title: "Settings",
                        subtitle: "Manage your account settings",
                      ),

                      const Divider(
                        color: Colors.white12,
                        height: 1,
                      ),

                      menuTile(
                        icon: Icons.help_outline_rounded,
                        title: "Help & Support",
                        subtitle: "Need assistance? Contact us",
                      ),

                      const Divider(
                        color: Colors.white12,
                        height: 1,
                      ),

                      menuTile(
                        icon: Icons.logout_rounded,
                        title: "Log Out",
                        subtitle: "Sign out from your account",
                        iconColor: Colors.redAccent,
                        textColor: Colors.redAccent,
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 35),
              ],
            ),
          ),
        ),
      ),
    );
  }
}