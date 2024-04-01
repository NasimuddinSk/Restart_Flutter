import 'package:flutter/material.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  int x = 50;
  void follow() {
    setState(() {
      x += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Profile",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        backgroundColor: Colors.black,
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                "https://img.freepik.com/premium-photo/fun-3d-cartoon-teenage-boy_1029469-12283.jpg?w=740",
              ),
            ),
          ),
          Text("Followers:$x"),
          ElevatedButton.icon(
            icon: const Icon(Icons.add),
            onPressed: () {
              follow();
            },
            label: const Text("Follow"),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text("Unfollow"),
          ),
          Image.asset("assets/images/img.jpg"),
        ],
      ),
    );
  }
}
