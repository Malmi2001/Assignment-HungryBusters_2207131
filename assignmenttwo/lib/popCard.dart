import 'package:flutter/material.dart';
import 'package:assignmenttwo/myAcc.dart';

void main() {
  runApp(MaterialApp(
    home: PopCard(),
  ));
}

class PopCard extends StatelessWidget {
  const PopCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('PopCard'),
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Container(
            width: 500,
            height:400,
            padding: EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.5),
                  spreadRadius: 5,
                  blurRadius: 7,
                  offset: Offset(0, 3),
                ),
              ],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                buildRow('Order', '9400 LKR', trailing: '', context: context),
                buildRow('Delivery', '300 LKR', trailing: '',context: context),
                buildRow('Total', '9700 LKR', isBold: true, trailing: '',context: context),
                SizedBox(height: 16),
                TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Apply Coupon Code',
                  ),
                ),
                SizedBox(height: 8),
                buildRow('Address', 'Victoria Higgins\n34 D-Rosa Ave,\nTexas', trailing: 'Change', context: context),
                buildRow('Payment Method', '**** **** **** 4656', trailing: 'Change', context: context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildRow(String title, String value, {required String trailing, bool isBold = false, required BuildContext context}) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 4),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Text(title, style: TextStyle(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
          Row(
            children: <Widget>[
              Text(value, style: TextStyle(fontSize: 16, fontWeight: isBold ? FontWeight.bold : FontWeight.normal)),
              SizedBox(width: 18),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MyAccPage()),
                  );
                },
                child: Text(trailing, style: TextStyle(color: Colors.red)),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class MyAccPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Account'),
      ),
   
    );
  }
}