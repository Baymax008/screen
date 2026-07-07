import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
      theme: ThemeData.dark(),
      home: const WishlistPage(),
    );
  }
}

class WishlistPage extends StatelessWidget {
  const WishlistPage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: const Color(0xff081529),

        bottomNavigationBar: ConvexAppBar(backgroundColor: const Color.fromARGB(255, 0, 71, 129),
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'My space'),
      TabItem(icon: Icons.search, title: 'search'),
      TabItem(icon: Icons.message, title: 'Messages'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
     onTap: (int i) {
  if (i == 2) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WishlistPage(),
      ),
    );
  }
},

),
        appBar: AppBar(
          backgroundColor: const Color(0xff081529),

          elevation: 0,
          centerTitle: false,
          leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios_new,
            color: Colors.white,
          ),
        ),
          title: const Text(
            "Wishlist",
            style: TextStyle(
              color: Colors.white,
              fontSize: 26,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.search, color: Colors.white),
            ),
          ],
          bottom: const TabBar(
            indicatorColor: Colors.amber,
            labelColor: Colors.amber,
            unselectedLabelColor: Colors.white70,
            tabs: [
              Tab(text: "My Wishlist"),
              Tab(text: "Requested"),
              Tab(text: "Purchased"),
            ],
          ),
        ),

        body: TabBarView(
          children: [

            SingleChildScrollView(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  const Text(
                    "My Wishlist (4)",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 20),

                  WishlistCard(
                    image: "assets/image/java_book.jpg",
                    title: "Artificial Intelligence",
                    subtitle: "Modern Approach",
                    author: "Stuart J. Russell",
                    status: "Available",
                    price: "₹1,250",
                    statusColor: Colors.green,
                  ),

                  const SizedBox(height: 15),

                  WishlistCard(
                    image: "assets/image/java_book.jpg",
                    title: "Java Programming",
                    subtitle: "Comprehensive Guide",
                    author: "Herbert Schildt",
                    status: "Out of Stock",
                    price: "₹899",
                    statusColor: Colors.red,
                  ),

                  const SizedBox(height: 15),

                  WishlistCard(
                    image: "assets/image/java_book.jpg",
                    title: "Python Crash Course",
                    subtitle: "2nd Edition",
                    author: "Eric Matthes",
                    status: "Available",
                    price: "₹999",
                    statusColor: Colors.green,
                  ),

                  const SizedBox(height: 15),

                  WishlistCard(
                    image: "assets/image/java_book.jpg",
                    title: "Flutter Complete Guide",
                    subtitle: "Latest Edition",
                    author: "Maximilian",
                    status: "Available",
                    price: "₹1,499",
                    statusColor: Colors.green,
                  ),

                  const SizedBox(height: 25),
                                    ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.amber,
                      foregroundColor: Colors.black,
                      minimumSize: const Size(double.infinity, 55),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    icon: const Icon(Icons.add),
                    label: const Text(
                      "Suggest a New Book",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),

            const Center(
              child: Text(
                "No Requested Books",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),

            const Center(
              child: Text(
                "No Purchased Books",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),

        
      ),
    );
  }
}

class WishlistCard extends StatelessWidget {
  final String image;
  final String title;
  final String subtitle;
  final String author;
  final String status;
  final String price;
  final Color statusColor;

  const WishlistCard({
    super.key,
    required this.image,
    required this.title,
    required this.subtitle,
    required this.author,
    required this.status,
    required this.price,
    required this.statusColor,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xff10203B),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.asset(
              image,
              width: 80,
              height: 120,
              fit: BoxFit.cover,
            ),
          ),

          const SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 19,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 4),

                Text(
                  subtitle,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 8),

                Text(
                  author,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                  ),
                ),

                const SizedBox(height: 10),

                Row(
                  children: [
                    const Text(
                      "Status : ",
                      style: TextStyle(color: Colors.white),
                    ),
                    Text(
                      status,
                      style: TextStyle(
                        color: statusColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 8),

                Text(
                  price,
                  style: const TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.amber,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}