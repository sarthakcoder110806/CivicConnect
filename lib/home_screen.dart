import 'package:flutter/material.dart';
import 'report_issue_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'CivicConnect',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // Profile will be added later.
            },
            icon: const Icon(Icons.account_circle),
          ),
        ],
      ),

      body: SingleChildScrollView(
        padding: const EdgeInsets.all(20),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            const Text(
              'Welcome, Citizen! 👋',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 8),

            const Text(
              'Help make your community better.',
              style: TextStyle(
                fontSize: 16,
              ),
            ),

            const SizedBox(height: 25),

            // Report Issue Card
            // Report Issue Card
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Icon(
                      Icons.report_problem,
                      size: 45,
                    ),

                    const SizedBox(height: 15),

                    const Text(
                      'Report a Civic Issue',
                      style: TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    const SizedBox(height: 8),

                    const Text(
                      'Report potholes, garbage, broken streetlights '
                          'and other civic problems.',
                    ),

                    const SizedBox(height: 15),

                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const ReportIssueScreen(),
                            ),
                          );
                        },
                        child: const Text('Report Issue'),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 25),

            const Text(
              'My Reports',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            // Report 1
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.construction,
                  size: 35,
                ),
                title: const Text(
                  'Pothole on Main Road',
                ),
                subtitle: const Text(
                  'Status: In Progress',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            ),

            // Report 2
            Card(
              child: ListTile(
                leading: const Icon(
                  Icons.delete,
                  size: 35,
                ),
                title: const Text(
                  'Garbage Collection Issue',
                ),
                subtitle: const Text(
                  'Status: Submitted',
                ),
                trailing: const Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Quick Actions
            const Text(
              'Quick Actions',
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),

            const SizedBox(height: 15),

            Row(
              children: [

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),

                      child: Column(
                        children: const [
                          Icon(
                            Icons.location_on,
                            size: 35,
                          ),
                          SizedBox(height: 8),
                          Text('Nearby Issues'),
                        ],
                      ),
                    ),
                  ),
                ),

                Expanded(
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(18),

                      child: Column(
                        children: const [
                          Icon(
                            Icons.track_changes,
                            size: 35,
                          ),
                          SizedBox(height: 8),
                          Text('Track Reports'),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'Report',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt),
            label: 'My Reports',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}