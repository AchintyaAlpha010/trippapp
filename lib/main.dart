import 'package:flutter/material.dart';

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(fontFamily: 'Nunito'),
        home: Homepage(),
      ),
    );

class Homepage extends StatefulWidget {
  @override
  _HomepageState createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  late PageController _pageController;
  int currentPage = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(
      initialPage: 0,
    );
  }

  @override
  void dispose() {
    _pageController.dispose(); // Dispose the controller when not needed
    super.dispose();
  }

  void _onScroll(int page) {
    setState(() {
      currentPage = page;
    });
    print("Current Page: $page");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (int page) {
          // Call _onScroll whenever the page changes
          _onScroll(page);
        },
        children: <Widget>[
          makePage(
            image: "assets/images/tajmaha.png",
            title: 'Tajmahal',
            pageNumber: 1,
            description: 'The Taj Mahal, located in Agra, India, is an iconic white marble mausoleum built by Mughal Emperor Shah Jahan in memory of his beloved wife Mumtaz Mahal. Completed in 1653, it is renowned for its stunning architecture, featuring a large central dome, intricate inlay work, and beautiful gardens. The Taj Mahal symbolizes eternal love and is a UNESCO World Heritage Site, attracting millions of visitors annually. Its exquisite beauty and historical significance make it one of the most celebrated monuments in the world.',
          ),
          makePage(
            image: "assets/images/hampi.png",
            title: 'Hampi',
            pageNumber: 2,
            description: 'Hampi, a UNESCO World Heritage Site in Karnataka, India, is a stunning historical and architectural marvel. Once the capital of the Vijayanagara Empire, Hampi boasts an array of ancient temples, palaces, and market streets set amidst a surreal landscape of giant boulders and lush greenery. Key attractions include the Virupaksha Temple, Vittala Temple with its iconic stone chariot, and the royal complex. Renowned for its intricate carvings and monumental structures, Hampi offers a glimpse into the grandeur of a bygone era, making it a must-visit destination for history enthusiasts and cultural explorers.',
          ),
          makePage(
            image: "assets/images/hawamahel.png",
            title: 'Hawamahal',
            pageNumber: 3,
            description: 'Hawa Mahal, known as the Palace of Winds, is an iconic landmark in Jaipur, India. Built in 1799 by Maharaja Sawai Pratap Singh, this stunning five-story palace is renowned for its unique honeycomb structure. With 953 small windows, or jharokhas, adorned with intricate latticework, Hawa Mahal was designed to allow royal women to observe street festivals and daily life without being seen. Constructed from red and pink sandstone, it exemplifies Rajput architecturial  elegance. Its blend of cultural significance, architectural beauty, and historical importance makes Hawa Mahal a must-visit attraction in the vibrant city of Jaipur.',
          ),
          makePage(
            image: "assets/images/ajanta.png",
            title: 'Ajanta-temple',
            pageNumber: 4,
            description: 'The Ajanta Caves, a UNESCO World Heritage Site located in Maharashtra, India, are renowned for their ancient Buddhist rock-cut cave monuments. Carved into a horseshoe-shaped cliff, these caves date back to the 2nd century BCE and showcase exquisite architecture, sculptures, and paintings. The site comprises 30 caves, including prayer halls, monasteries, and chaitya-grihas (stupa halls). These masterpieces depict the life of Buddha, Jataka tales, and various deities. Ajanta represents a pinnacle of ancient Indian artistry, blending religious symbolism with architectural brilliance, making it a significant pilgrimage and cultural destination, offering profound insights into  rich history of India and spiritual heritage.Description for page 4',
          ),
        ],
      ),
    );
  }

Widget makePage({required String image, required String title, required int pageNumber, required String description}) {
  return Container(
    decoration: BoxDecoration(
      image: DecorationImage(
        image: AssetImage(image),
        fit: BoxFit.cover,
      ),
    ),
    child: SingleChildScrollView( // Wrap the Column with SingleChildScrollView
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            stops: [0.3, 0.9],
            colors: [
              Colors.black.withOpacity(0.1), // Reduced opacity
              Colors.black.withOpacity(0.1), // Reduced opacity
            ],
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.baseline,
                textBaseline: TextBaseline.alphabetic,
                children: <Widget>[
                  Text(
                    '$pageNumber',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '/4',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20), // Adjusted the position
              Text(
                title,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 50,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20), // Adjusted the position
              Row(
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star, color: Colors.yellow, size: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star, color: Colors.yellow, size: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star, color: Colors.yellow, size: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 3),
                    child: Icon(Icons.star, color: Colors.yellow, size: 15),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: 5),
                    child: Icon(Icons.star, color: Colors.yellow, size: 15),
                  ),
                  Text(
                    '4.0',
                    style: TextStyle(color: Colors.white70),
                  ),
                  Text(
                    '2300',
                    style: TextStyle(color: Colors.white38, fontSize: 12),
                  ),
                ],
              ),
              SizedBox(height: 20), // Adjusted the position
              Padding(
                padding: const EdgeInsets.only(right: 50),
                child: Text(
                  description,
                  style: TextStyle(
                    color: Colors.white.withOpacity(.7),
                    height: 1.9,
                    fontSize: 15,
                  ),
                ),
              ),
              SizedBox(height: 20), // Adjusted the position
              Text('Read More', style: TextStyle(color: Colors.white)),
              SizedBox(height: 40),
            ],
          ),
        ),
      ),
    ),
  );
}



}
