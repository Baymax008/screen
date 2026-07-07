import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import 'package:flutter/material.dart';

class RequestBookScreen extends StatelessWidget {
  const RequestBookScreen({super.key});

  @override
  Widget build(BuildContext context) {
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
  if (i == 1) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => RequestBookScreen(),
      ),
    );
  }
},
),
      appBar: AppBar(
        backgroundColor: const Color(0xFF07142D),
        elevation: 0,
        centerTitle: false,
        automaticallyImplyLeading: false,
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back_ios_new_rounded,
            color: Colors.white,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: const Text(
          "Book Request",
          style: TextStyle(
            color: Colors.white,
            fontSize: 28,
            fontWeight: FontWeight.w500,
            fontFamily: "Serif",
          ),
        ),
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 16,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // Banner
              Container(
                height: 220,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF0B1D3D),
                  borderRadius: BorderRadius.circular(22),
                ),
                child: Row(
                  children: [

                    Expanded(
                      flex: 8,
                      child: Padding(
                        padding: const EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [

                            Text(
                              "Request a Book for the Library",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),

                            SizedBox(height: 50),
                              
                            Text(
                              "Can't find the book you need ?\nSubmit your request and our library team will review it.",
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 15,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    
                  ],
                ),
              ),

              const SizedBox(height: 30),
              const Text(
                "Book Title *",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Enter book title",
                icon: Icons.menu_book_outlined,
              ),

              const SizedBox(height: 22),

              const Text(
                "Author *",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Enter author name",
                icon: Icons.person_outline,
              ),

              const SizedBox(height: 22),

              const Text(
                "Publisher (Optional)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Enter publisher name",
                icon: Icons.business_outlined,
              ),

              const SizedBox(height: 22),

              const Text(
                "Edition (Optional)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Enter edition (Example: 3rd Edition)",
                icon: Icons.library_books_outlined,
              ),

              const SizedBox(height: 22),

              const Text(
                "Reason for Request *",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Explain why this book should be added...",
                icon: Icons.edit_note_outlined,
                maxLines: 5,
              ),

              const SizedBox(height: 22),

              const Text(
                "Additional Notes (Optional)",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 17,
                  fontWeight: FontWeight.w600,
                ),
              ),

              const SizedBox(height: 10),

              customField(
                hint: "Any additional information...",
                icon: Icons.notes_outlined,
                maxLines: 4,
              ),

              const SizedBox(height: 35),

              SizedBox(
                width: double.infinity,
                height: 58,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD6A44C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18),
                    ),
                  ),
                  child: const Text(
                    "Submit Request",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 30),

            ],
          ),
        ),
      ),
           
    );
  }
}

Widget customField({
  required String hint,
  required IconData icon,
  int maxLines = 1,
}) {
  return TextField(
    maxLines: maxLines,
    style: const TextStyle(
      color: Colors.white,
      fontSize: 16,
    ),
    decoration: InputDecoration(
      hintText: hint,
      hintStyle: const TextStyle(
        color: Colors.white54,
      ),
      prefixIcon: Icon(
        icon,
        color: Color(0xFFD6A44C),
      ),
      filled: true,
      fillColor: const Color(0xFF0B1D3D),
      contentPadding: const EdgeInsets.symmetric(
        horizontal: 20,
        vertical: 18,
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: BorderSide(
          color: Colors.white12,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(18),
        borderSide: const BorderSide(
          color: Color(0xFFD6A44C),
          width: 1.5,
        ),
      ),
    ),
  );
}