import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  final List<String> buttons = [
    "GOAT",
    "Aboutrika",
    "Nature",
    "Mountains",
    "Foot Ball"
  ];

  GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        leading: const Icon(Icons.menu, color: Colors.black),
        title: const Text(
          "Gallery",
          style: TextStyle(color: Colors.black),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings, color: Colors.black),
          )
        ],
      ),
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/background.png', // Replace with your image path
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(vertical: 16),
              itemCount: buttons.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  child: MaterialButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              ImagePage(title: buttons[index]),
                        ),
                      );
                    },
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    elevation: 2,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      buttons[index],
                      style: const TextStyle(
                        fontStyle: FontStyle.italic,
                        fontSize: 16,
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
      backgroundColor: Colors.purple[50],
    );
  }
}

class ImagePage extends StatelessWidget {
  final String title;

  ImagePage({super.key, required this.title});

  final Map<String, List<String>> images = {
    "Foot Ball": [
      "assets/images/salah.png",
      "assets/images/fede.png",
      "assets/images/biligol.png",
      "assets/images/salah.png",
      "assets/images/fede.png",
      "assets/images/biligol.png",
      "assets/images/salah.png",
      "assets/images/fede.png",
      "assets/images/biligol.png",
      "assets/images/salah.png",
      "assets/images/fede.png",
      "assets/images/biligol.png",
    ],
    "Aboutrika": [
      "assets/images/trika1.png",
      "assets/images/trika2.png",
      "assets/images/trika3.png",
      "assets/images/trika1.png",
      "assets/images/trika2.png",
      "assets/images/trika3.png",
      "assets/images/trika1.png",
      "assets/images/trika2.png",
      "assets/images/trika3.png",
      "assets/images/trika1.png",
      "assets/images/trika2.png",
      "assets/images/trika3.png",
    ],
    "Nature": [
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.png",
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.png",
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.png",
      "assets/images/img1.png",
      "assets/images/img2.png",
      "assets/images/img3.png",
    ],
    "Mountains": [
      "assets/images/mountain1.png",
      "assets/images/mountain2.png",
      "assets/images/mountain3.png",
      "assets/images/mountain1.png",
      "assets/images/mountain2.png",
      "assets/images/mountain3.png",
      "assets/images/mountain1.png",
      "assets/images/mountain2.png",
      "assets/images/mountain3.png",
      "assets/images/mountain1.png",
      "assets/images/mountain2.png",
      "assets/images/mountain3.png",
    ],
    "GOAT": [
      "assets/images/cristiano1.png",
      "assets/images/cristiano2.png",
      "assets/images/cristiano3.png",
      "assets/images/cristiano4.png",
      "assets/images/cristiano5.png",
      "assets/images/cristiano1.png",
      "assets/images/cristiano2.png",
      "assets/images/cristiano3.png",
      "assets/images/cristiano4.png",
      "assets/images/cristiano5.png",
      "assets/images/cristiano1.png",
      "assets/images/cristiano2.png",
      "assets/images/cristiano3.png",
      "assets/images/cristiano4.png",
      "assets/images/cristiano5.png",
    ],
  };

  @override
  Widget build(BuildContext context) {
    final imageList = images[title] ?? [];

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue[500],
        title: Text(
          title,
          style: const TextStyle(color: Colors.black),
        ),
        iconTheme: const IconThemeData(color: Colors.black),
      ),
      body: imageList.isEmpty
          ? Stack(
              children: [
                SizedBox.expand(
                  child: Image.asset(
                    'assets/images/background.png', // Replace with your image path
                    fit: BoxFit.cover,
                  ),
                ),
                const Center(
                  child: Text(
                    "No images available",
                    style: TextStyle(fontSize: 18),
                  ),
                ),
              ],
            )
          : Stack(
            children: [
              SizedBox.expand(
                child: Image.asset(
                  'assets/images/background.png', // Replace with your image path
                  fit: BoxFit.cover,
                ),
              ),
                GridView.builder(
                  padding: const EdgeInsets.all(16),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 16,
                    mainAxisSpacing: 16,
                  ),
                  itemCount: imageList.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        showDialog(
                          context: context,
                          builder: (context) {
                            return Dialog(
                              child: InteractiveViewer(
                                child: Image.asset(
                                  imageList[index],
                                  fit: BoxFit.contain,
                                ),
                              ),
                            );
                          },
                        );
                      },
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(30),
                        child: Image.asset(
                          imageList[index],
                          fit: BoxFit.cover,
                        ),
                      ),
                    );
                  },
                ),
              ],
          ),
    );
  }
}
