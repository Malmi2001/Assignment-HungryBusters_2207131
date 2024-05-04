import 'package:assignmenttwo/popCard.dart';
import 'package:flutter/material.dart';
import 'package:assignmenttwo/menu.dart';

class FoodItem {
  final String name;
  final double rating;
  final int price;
  final String imagePath;

  FoodItem(this.name, this.rating, this.price, this.imagePath);
}

class CheckOutPage extends StatefulWidget {
  @override
  _CheckOutPageState createState() => _CheckOutPageState();
}

class _CheckOutPageState extends State<CheckOutPage> {
  final List<FoodItem> foodItems = [
    FoodItem('Tex Mex BBQ', 4.5, 2400, 'assets/images/texmex.png'),
    FoodItem('Twin Burger', 4.5, 1400, 'assets/images/twin.png'),

  ];

  Map<String, int> quantities = {};

  @override
  void initState() {
    super.initState();
    foodItems.forEach((item) {
      quantities[item.name] = 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Order Summary'),
      ),
      body: ListView(
        children: foodItems.map((item) => Card(
          child: ListTile(
            leading: Image.asset(item.imagePath),
            title: Text(item.name),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text('Rating: ${item.rating} ★'),
                Text('${item.price} LKR'),
              ],
            ),
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: Icon(Icons.remove_circle_outline),
                  onPressed: () {
                    setState(() {
                      if (quantities[item.name]! > 1) {
                        quantities[item.name] = quantities[item.name]! - 1;
                      }
                    });
                  },
                ),
                Text('${quantities[item.name]}'),
                IconButton(
                  icon: Icon(Icons.add_circle_outline),
                  onPressed: () {
                    setState(() {
                      quantities[item.name] = quantities[item.name]! + 1;
                    });
                  },
                ),
              ],
            ),
          ),
        )).toList(),
      ),
      bottomNavigationBar: BottomAppBar(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.red, // background color
          ),
          child: const Text('Checkout', style: TextStyle(color: Colors.white)),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PopCard()),
            );
          },
        ),
      ),
    );
  }

  int calculateTotal() {
    int total = 0;
    foodItems.forEach((item) {
      total += item.price * quantities[item.name]!;
    });
    return total;
  }
}

void main() {
  runApp(MaterialApp(
    home: CheckOutPage(),
    
  ));
}
