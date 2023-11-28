import 'package:flutter/material.dart';
import 'package:thuctap/category_tabs.dart';
import 'package:thuctap/card_view.dart';
import 'package:flutter/material.dart';
import 'category_tabs.dart';
import 'card_view.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<Map<String, String>> items = [
    {
      'title': 'Make The World More',
      'description': 'Meaningful',
      'image':
          'https://dayve.vn/wp-content/uploads/2021/12/Cach-ve-trai-tim-buoc-6.png',
    },
    // Add more items 
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            // Handle menu button pressed
            print('Menu button pressed!');
          },
        ),
        title: Text('Home'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              // Handle account button pressed
              print('Account button pressed!');
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(25, 15, 25, 15),
              child: Container(
                height: 40, // Set height
                child: TextField(
                  decoration: InputDecoration(
                    contentPadding: EdgeInsets.symmetric(
                      vertical: 5,
                    ), 
                    hintText: 'Search...',
                    prefixIcon: Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                  ),
                ),
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemCount: items.length,
              itemBuilder: (context, index) {
                return Card(
                  color: Color.fromARGB(255, 2, 189, 95),
                  child: ListTile(
                    contentPadding: EdgeInsets.all(16),
                    leading: Image.network(
                      items[index]['image']!,
                      width: 50,
                      height: 50,
                      fit: BoxFit.cover,
                    ),
                    title: Text(items[index]['title']!),
                    subtitle: Text(items[index]['description']!),
                    onTap: () {
                      // Handle item tapped
                      print('Item ${index + 1} tapped!');
                    },
                  ),
                );
              },
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 29,
              ),
              child: Text(
                'Category',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 20,
                top: 0,
                bottom: 20,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Wrap(
                  spacing: 30,
                  children: <Widget>[
                    CategoryTabs('Education'),
                    CategoryTabs('Disates'),
                    CategoryTabs('Medical'),
                    CategoryTabs('Plant Pots'),
                    CategoryTabs('Easy Planted'),
                  ],
                ),
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: 10,
                top: 20,
                bottom: 18,
              ),
              child: Text(
                'Tranding Compaign',
                style: TextStyle(
                  fontSize: 17,
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: <Widget>[
                  CardView(
                    cardTitle: 'Snack for the eldery',
                    price: 27,
                    category: 'OUTDOOR',
                    child: Image.network(
                      'https://image.vtc.vn/resize/th/upload/2022/01/06/cay-bang-thaiphonggallery-20-11243273.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SizedBox(width: 15), 
                  CardView(
                    cardTitle: 'Food for poor kid',
                    price: 36,
                    category: 'INDOOR',
                    child: Image.network(
                      'https://image.vtc.vn/resize/th/upload/2022/01/06/cay-bang-nina-may-check-in-vietnamjpg-3-11223645.jpg',
                      width: 150,
                      height: 150,
                      fit: BoxFit.cover,
                    ),
                  ),
                  // Add more CardView widgets 
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.only(left: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Description',
                    style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Aloe Vera is a succulent plant species of the genus Aloe. It\'s medicinal'
                    'uses and air purifying ability make it the plant that you shouldn\'t live without.',
                    style: TextStyle(
                      color: Colors.blueGrey,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
