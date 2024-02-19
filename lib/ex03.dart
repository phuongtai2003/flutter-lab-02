import 'package:flutter/material.dart';

class Exercise03 extends StatelessWidget {
  const Exercise03({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.white, width: 1),
                ),
                child: ClipOval(
                  child: Image.network(
                    'https://randomuser.me/api/portraits/men/1.jpg',
                    width: 100,
                    height: 100,
                  ),
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'ME MAY BEO',
                style: TextStyle(
                  fontFamily: 'Pacifico',
                  color: Colors.white,
                  fontSize: 30,
                ),
              ),
              const SizedBox(
                height: 8,
              ),
              Text(
                "Flutter Developer".toUpperCase(),
                style: const TextStyle(
                  color: Color.fromARGB(255, 0, 89, 100),
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: const Divider(
                  height: 30,
                  thickness: 2,
                  color: Colors.cyan,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.phone,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    "+84 1234567890",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.message,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    "test@gmail.com",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Container(
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(
                    Radius.circular(10),
                  ),
                ),
                child: const ListTile(
                  leading: Icon(
                    Icons.video_camera_back,
                    color: Colors.cyan,
                  ),
                  title: Text(
                    "meets.google.com/abc-xyz-123",
                    style: TextStyle(
                      color: Colors.cyan,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
