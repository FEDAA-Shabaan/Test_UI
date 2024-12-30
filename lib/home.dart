import 'package:flutter/material.dart';

class MoodyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Image.asset("assets/images/logo.png"),
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Hello, Sara Rose',
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'How are you feeling today?',
              style: TextStyle(fontSize: 16, color: Colors.black),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/love.png"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/cool.png"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/happy.png"),
                SizedBox(
                  width: 10,
                ),
                Image.asset("assets/images/sad.png"),
              ],
            ),
            SizedBox(height: 24),
            _FeatureSection(),
            SizedBox(height: 24),
            _ExerciseSection(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.home, color: Colors.green),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.grid_view, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.calendar_today, color: Colors.black),
            label: "",
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.white,
            icon: Icon(Icons.person, color: Colors.black),
            label: "",
          ),
        ],
      ),
    );
  }
}

class _FeatureSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              'Feature',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child:
                  const Text("See more", style: TextStyle(color: Colors.green)),
            ),

          ],
        ),
        SizedBox(height: 8),
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.green[50],
            borderRadius: BorderRadius.circular(12),
          ),
          child: ListTile(
            leading:
                Icon(Icons.play_circle_fill, color: Colors.green, size: 40),
            title: Text(
              'Positive vibes',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text('Boost your mood with positive vibes\n10 mins'),
          ),
        ),

      ],
    );
  }
}

class _ExerciseSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [

            Text(
              'Exercise',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            TextButton(
              onPressed: () {},
              child:
                  const Text("See more", style: TextStyle(color: Colors.green)),
            ),
          ],
        ),
        SizedBox(height: 8),
        GridView(
          shrinkWrap: true,
          physics: NeverScrollableScrollPhysics(),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3,
            mainAxisSpacing: 8,
            crossAxisSpacing: 8,
          ),
          children: [
            _ExerciseTile(
                label: 'Relaxation',
                icon: Icons.self_improvement,
                color: Colors.purple),
            _ExerciseTile(
                label: 'Meditation', icon: Icons.spa, color: Colors.pink),
            _ExerciseTile(
                label: 'Breathing', icon: Icons.air, color: Colors.orange),
            _ExerciseTile(
                label: 'Yoga', icon: Icons.fitness_center, color: Colors.blue),
          ],
        ),
      ],
    );
  }
}

class _ExerciseTile extends StatelessWidget {
  final String label;
  final IconData icon;
  final Color color;

  const _ExerciseTile(
      {required this.label, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: color.withOpacity(0.1),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, color: color),
            SizedBox(width: 8),
            Text(label,
                style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}
