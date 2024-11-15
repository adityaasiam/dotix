import 'package:flutter/material.dart';

void main() => runApp(Homescreen());

class Homescreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Header
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CircleAvatar(
                      backgroundImage: AssetImage('assets/1.png'),
                      radius: 24,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Hello, Sulaiman!", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 4),
                            Text("100", style: TextStyle(fontSize: 16)),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                  ],
                ),
                const SizedBox(height: 20),

                // Play & Win Section
                const Text("Play & Win", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),

                // Quiz Competition Cards
                Column(
                  children: [
                    // First Larger Rectangle Card
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue.shade100,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Column(
                        children: [
                          Image.asset('assets/brain-idea 1.png', height: 50),
                          const SizedBox(height: 8),
                          const Text("Sains Spectacular Quiz Competition", textAlign: TextAlign.center, style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                          const Text("10 Questions", style: TextStyle(fontSize: 14)),
                          const SizedBox(height: 8),
                          ElevatedButton(onPressed: () {}, child: const Text("Play now")),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),

                    // Row with Two Smaller Square Cards
                    Row(
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.red.shade100,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/math-book 1.png', height: 40),
                                const SizedBox(height: 8),
                                const Text("Ancient World History", textAlign: TextAlign.center),
                                const Text("10 Questions"),
                                const SizedBox(height: 8),
                                ElevatedButton(onPressed: () {}, child: const Text("Play now")),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(16),
                            decoration: BoxDecoration(
                              color: Colors.green.shade100,
                              borderRadius: BorderRadius.circular(12),
                            ),
                            child: Column(
                              children: [
                                Image.asset('assets/search 1.png', height: 40),
                                const SizedBox(height: 8),
                                const Text("Nature & Animal BC", textAlign: TextAlign.center),
                                const Text("16 Questions"),
                                const SizedBox(height: 8),
                                ElevatedButton(onPressed: () {}, child: const Text("Play now")),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // Follow Us Section
                const Text("Follow us", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      Image.asset('assets/whatsapp.png', height: 60),
                      const SizedBox(width: 35),
                      Image.asset('assets/telegram.png', height: 60),
                      const SizedBox(width: 35),
                      Image.asset('assets/google.png', height: 60),
                      const SizedBox(width: 35),
                      Image.asset('assets/instagram.png', height: 60),
                      const SizedBox(width:35),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Daily Bonus Section
                Container(
                  padding: const EdgeInsets.all(16),
                  decoration: BoxDecoration(
                    color: Colors.brown.shade100,
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Row(
                    children: [
                      Image.asset('assets/money-bag 1.png', height: 50),
                      const SizedBox(width: 10),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Claim Your Bonus", style: TextStyle(fontWeight: FontWeight.bold)),
                          Text("Come back every day for more rewards."),
                        ],
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Actions Section
                const Text("Actions", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                const SizedBox(height: 10),
                GridView.count(
                  crossAxisCount: 3,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  children: [
                    _buildActionCard("Puzzle", 'assets/Group 1261152996.png'),
                    _buildActionCard("Hunt", 'assets/Frame 1171275979.png'),
                    _buildActionCard("Brain Buzz", 'assets/Vector.png'),
                    _buildActionCard("Lottery", 'assets/image 47.png'),
                    _buildActionCard("Time Wall", 'assets/Group 83.png'),
                    _buildActionCard("Lottery", 'assets/image 47.png'),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home,color: Colors.black), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.explore,color: Colors.black), label: 'Discover'),
            BottomNavigationBarItem(icon: Icon(Icons.leaderboard,color: Colors.black), label: 'Leaderboard'),
            BottomNavigationBarItem(icon: Icon(Icons.emoji_events,color: Colors.black), label: 'Achievement'),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard(String title, String imagePath) {
    return Container(
      padding: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.pink.shade100,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(imagePath, height: 40),
          const SizedBox(height: 8),
          Text(title, textAlign: TextAlign.center),
        ],
      ),
    );
  }
}
