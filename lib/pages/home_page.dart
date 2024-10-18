import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    var lebar = MediaQuery.of(context).size.width;
    var tinggi = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pertemuan 6_Vista"),
        backgroundColor: Colors.amberAccent,
      ),
      body: Column(
        children: [
          Container(
            width: lebar,
            height: tinggi / 1.2,
            color: const Color.fromARGB(
                255, 255, 241, 190), // Outer container color
            child: Center(
              // child: Container(
              //   width: lebar * 0.3, // Inner container width
              //   height: tinggi * 0.3,
              //   color: const Color.fromARGB(
              //       255, 128, 219, 255), // Inner container color
              // ),

              child: GestureDetector(
                onTap: () {
                  setState(() {
                    selected = !selected;
                  });
                },
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 500),
                  width: selected ? 300.0 : 100.0,
                  height: selected ? 300.0 : 100.0,
                  color: selected
                      ? const Color.fromARGB(255, 100, 0, 176)
                      : const Color.fromARGB(255, 0, 217, 221),
                  alignment: selected
                      ? Alignment.center
                      : AlignmentDirectional.topCenter,
                  child: const Text(
                    'Klik Saya',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
