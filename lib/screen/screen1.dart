import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
class Screen1 extends StatefulWidget {
  const Screen1({super.key});

  @override
  State<Screen1> createState() => _Screen1State();
}

class _Screen1State extends State<Screen1> {
  String selectedSemester = "BCA - Semester 1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF050B1D),
bottomNavigationBar: ConvexAppBar(
    items: [
      TabItem(icon: Icons.home, title: 'Home'),
      TabItem(icon: Icons.map, title: 'Discovery'),
      TabItem(icon: Icons.add, title: 'Add'),
      TabItem(icon: Icons.message, title: 'Message'),
      TabItem(icon: Icons.people, title: 'Profile'),
    ],
    onTap: (int i) => print('click index=$i'),
  ),

      appBar: AppBar(
        backgroundColor: const Color(0xFF06102F),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Semester Books",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
          ),
        ),
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [

            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                color: const Color(0xFF0B1730),
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  color: const Color(0xFF24365E),
                ),
              ),

              child: DropdownButtonHideUnderline(
                child: DropdownButton<String>(
                  value: selectedSemester,
                  dropdownColor: const Color(0xFF0B1730),
                  isExpanded: true,

                  icon: const Icon(
                    Icons.keyboard_arrow_down,
                    color: Colors.white,
                  ),

                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                  ),

                  items: const [

                    DropdownMenuItem(
                      value: "BCA - Semester 1",
                      child: Text("BCA - Semester 1"),
                    ),

                    DropdownMenuItem(
                      value: "BCA - Semester 2",
                      child: Text("BCA - Semester 2"),
                    ),

                    DropdownMenuItem(
                      value: "BCA - Semester 3",
                      child: Text("BCA - Semester 3"),
                    ),

                    DropdownMenuItem(
                      value: "BCA - Semester 4",
                      child: Text("BCA - Semester 4"),
                    ),

                    DropdownMenuItem(
                      value: "BCA - Semester 5",
                      child: Text("BCA - Semester 5"),
                    ),

                    DropdownMenuItem(
                      value: "BCA - Semester 6",
                      child: Text("BCA - Semester 6"),
                    ),

                  ],

                  onChanged: (value) {
                    setState(() {
                      selectedSemester = value!;
                    });
                  },
                ),
              ),
            ),

            const SizedBox(height: 20),

            Expanded(
              child: ListView(
                children: [

                  buildBookCard(
                    "Data Structures\nUsing C",
                    "Mark Allen Weiss",
                    "Available",
                    Colors.green,
                  ),

                  buildBookCard(
                    "Database Management Systems",
                    "Raghu Ramakrishnan",
                    "Due : 15 May 2025",
                    Colors.red,
                  ),

                  buildBookCard(
                    "Operating Systems",
                    "Abraham Silberschatz",
                    "Available",
                    Colors.green,
                  ),

                  buildBookCard(
                    "Artificial Intelligence",
                    "Stuart J. Russell",
                    "Arriving : 3 June 2025",
                    Colors.greenAccent,
                  ),

                  buildBookCard(
                    "Computer Networks",
                    "James F. Kurose",
                    "Availabe",
                    Colors.green,
                  ),

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }

  Widget buildBookCard(
      String title,
      String author,
      String status,
      Color statusColor,
      ) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: const Color(0xFF09142B),
        borderRadius: BorderRadius.circular(16),
        border: Border.all(
          color: const Color(0xFF1D2B4D),
        ),
      ),
      child: Row(
        children: [

          Container(
            width: 70,
            height: 95,
            decoration: BoxDecoration(
              color: Colors.blueGrey,
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius:BorderRadius.circular(8),
                  child: Image.asset("assets/image/java_book.jpg",
                  width:70,
                  height:95,
                  fit:BoxFit.cover,
                )
                ),
              ]
            ),
          ),
          const SizedBox(width: 10),
          
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  title,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                const SizedBox(height: 6),

                Text(
                  author,
                  style: const TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),

                const SizedBox(height: 10),

                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: statusColor.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Text(
                    status,
                    style: TextStyle(
                      color: statusColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

              ],
            ),
          ),

          const Icon(
            Icons.arrow_forward_ios,
            color: Colors.white54,
          ),

        ],
      ),
    );
  }
}