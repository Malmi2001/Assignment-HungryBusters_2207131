import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(
    home: MenuPage(),
  ));
}

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Menu'),
        backgroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset('assets/images/pasta_mozzarella.png'),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Text(
                    'Pasta Mozzarella',
                    style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Non Veg Classic Melt',
                    style: TextStyle(fontSize: 16.0, color: Colors.grey),
                  ),
                  const SizedBox(height: 10.0),
                  const Row(
                    children: <Widget>[
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star, color: Colors.yellow),
                      Icon(Icons.star_half, color: Colors.yellow),
                      Text(' 4.5', style: TextStyle(fontSize: 16.0)),
                      Spacer(),
                      Text(
                        '1850 LKR',
                        style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
              
                  const SizedBox(height: 10.0),
                  ElevatedButton(
                   
                    child: const Text('Add to Bag', style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Pasta Mozzarella is a unique blend of cheesy goodness and fluffy flaky pasta richness. Pasta Mozzarella is served with your choice of protein or vegetable and any topping of the selected classic and spicy ranges!',
                    style: TextStyle(fontSize: 16.0),
                  ),
                  const SizedBox(height: 10.0),
                  const Text(
                    'Portion serves two!',
                    style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 20.0),
      const Text(
  'You might also like',
  style: TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold),
),
const SizedBox(height: 10.0),
Row(
  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  children: <Widget>[
    Image.asset('assets/images/popupimg3.png'),
    Image.asset('assets/images/popupimg5.jpeg'),
    Image.asset('assets/images/popupimg3.png'),
    Image.asset('assets/images/popupimg5.jpeg')
   
  ],
),

              
          ]
              )
              


              )
              ])
            )
    );
  }
}