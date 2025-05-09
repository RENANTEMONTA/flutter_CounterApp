import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int counterValue = 0;

  void incrementFunction() {
    setState(() {
      counterValue++;
    });
  }

  void decrementFunction() {
    setState(() {
      counterValue--;
    });
  }

  void resetFunction() {
    setState(() {
      counterValue = 0;
    });
  }

  Widget counterButton({
    required String label,
    required IconData icon,
    required VoidCallback onPressed,
  }) {
    return ElevatedButton.icon(
      onPressed: onPressed,
      label: Text(label),
      icon: Icon(icon),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.indigo[50],
        appBar: AppBar(
          backgroundColor: Colors.indigo[300],
          title: const Text(
            'Counter App',
            style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
          ),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Counter: $counterValue',
                style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 20),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  counterButton(
                    label: 'Increment',
                    icon: Icons.add,
                    onPressed: incrementFunction,
                  ),
                  const SizedBox(width: 10),
                  counterButton(
                    label: 'Decrement',
                    icon: Icons.remove,
                    onPressed: decrementFunction,
                  ),
                ],
              ),

              const SizedBox(height: 20),

              counterButton(
                label: 'Reset',
                icon: Icons.restart_alt,
                onPressed: resetFunction,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
