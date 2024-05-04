import 'package:flutter/material.dart';
import 'package:assignmenttwo/myAcc.dart'; // 
import 'package:assignmenttwo/checkOut.dart';
import 'package:assignmenttwo/menu.dart';



class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food App',
      theme: ThemeData(
        primarySwatch: Colors.red,
      ),
      home: MenuPage(),
    );
  }
}

class FoodItem {
  final String name;
  final double rating;
  final String category;
  final int price;
  final String imagePath;
  FoodItem(this.name, this.rating, this.category, this.price, this.imagePath);
}

class MenuPage extends StatelessWidget {
  final List<FoodItem> foodItems = [
    FoodItem('Tex Mex BBQ', 4.5, 'Non Veg Classic Meat', 2400,
        'assets/images/texmex.png'),
    FoodItem(
        'Twin Burger', 4.5, 'Non Veg Burgers', 1400, 'assets/images/twin.png'),
    FoodItem('Pasta Mozzarella', 4.5, 'Non Veg Classic Meat', 1850,
        'assets/images/pastamozzarella.jpeg'),
    FoodItem('Tex Mex BBQ', 4.5, 'Non Veg Classic Meat', 2400,
        'assets/images/texmex.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: PopupMenuButton<int>(
          icon: const Icon(Icons.table_rows_sharp,
              color: Color.fromARGB(255, 231, 44, 6)),
          itemBuilder: (context) => [
            const PopupMenuItem(
              value: 1,
              child: Text("Korean Foods"),
            ),
            const PopupMenuItem(
              value: 2,
              child: Text("Italian Foods"),
            ),
            const PopupMenuItem(
              value: 3,
              child: Text("Indian Foods"),
            ),
            const PopupMenuItem(
              value: 4,
              child: Text("American Foods"),
            ),
          ],
          onSelected: (value) {
            // Handle your logic here based on the selected option
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 50.0),
          child: Row(
            children: <Widget>[
              const Expanded(
                child: Text('Good Afternoon Victoria!'),
              ),
              IconButton(
                icon: ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/accimg.jpeg',
                    fit: BoxFit.fill,
                    width: 50,
                    height: 50,
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccPage()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                labelText: "Search meals",
              ),
            ),
          ),
          Padding( 
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/images/coverimg.jpeg'),
          ),
     Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: List.generate(
    5,
    (index) => Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        width: 50.0,
        height: 50.0,
        color: const Color.fromARGB(255, 233, 52, 2),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(50), 
          child: Image.asset('assets/images/dinnercopy.png'),
        ),
      ),
    ),
  ),
),


          ...foodItems
          
              .map((item) => Card(
                    child: ListTile(
                      leading: Image.asset(item.imagePath),
                      title: Text(item.name),
                      subtitle: Text('${item.category} - ${item.price} LKR'),
                      trailing: Text('${item.rating} ★'),
                      
                    ),
                  ))
              .toList(),
        ],
      ),
bottomNavigationBar: BottomNavigationBar(
  onTap: (index) {
    switch (index) {
      case 1:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => MenuPage()),
        );
        break;
      case 2:
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => CheckOutPage()),
        );
        break;
     
    }
  },
  items: const <BottomNavigationBarItem>[
    BottomNavigationBarItem(
      icon: Icon(Icons.home, color: Color.fromARGB(255, 246, 63, 7)), 
      label: 'home',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.location_on_outlined, color: Color.fromARGB(255, 246, 63, 7)), 
      label: 'location',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.shopping_bag_outlined, color: Color.fromARGB(255, 246, 63, 7)), 
      label: 'bag',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite_border, color: Color.fromARGB(255, 246, 63, 7)),
      label: 'favorite',
    ),
  ],
),


    );
  }
}


class FoodDetailsPage extends StatelessWidget {
  final FoodItem foodItem;

  const FoodDetailsPage({required this.foodItem, required key, required rating, required int price, required String category, required String name, required String imagePath});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(foodItem.name),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            Image.asset(foodItem.imagePath),
            Text('Category: ${foodItem.category}'),
            Text('Price: ${foodItem.price} LKR'),
            Text('Rating: ${foodItem.rating} ★'),
          ],
        ),
      ),
    );
  }
}
