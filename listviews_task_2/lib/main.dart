import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final searchController = TextEditingController();
  List<String> items = [
    'Burger',
    'Pepsi',
    'Coke',
    'Pizza',
    'Beef Burger',
    'Fries',
    'Coffee',
    'Chai',
    'Rice',
    'Omelette',
    'Chicken',
    'Beef',
    'Spring Rolls',
    'Shawarma',
    'Chicken Karahi',
  ];
  List<String> filteredItems = [];

  @override
  void initState() {
    super.initState();
    filteredItems = items;
  }

  void filterItems(String itemName) {
    setState(() {
      filteredItems = items
          .where((item) => item.toLowerCase().contains(itemName.toLowerCase()))
          .toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.pink,
        leading: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
        title: const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Food Delivery",
              style: TextStyle(color: Colors.white, fontSize: 16),
            ),
            Text(
              "HOME",
              style: TextStyle(fontSize: 12, color: Colors.white),
            ),
          ],
        ),
        actions: const [
          Icon(
            Icons.favorite_border,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
          Icon(
            Icons.shopping_basket_outlined,
            color: Colors.white,
            size: 28,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                height: height * 0.07,
                width: width * 1,
                decoration: const BoxDecoration(color: Colors.pink),
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextField(
                      controller: searchController,
                      onChanged: filterItems,
                      decoration: InputDecoration(
                        hintText: 'Search for food items..',
                        prefixIcon: const Icon(Icons.search_outlined),
                        contentPadding: const EdgeInsets.only(bottom: 0),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(25),
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
          SizedBox(
            height: 100,
            width: double.infinity,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Center(
                      child: Text(filteredItems[index]),
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: filteredItems.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding: const EdgeInsets.all(8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.grey[400],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: ListTile(
                      title: Text(filteredItems[index]),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
