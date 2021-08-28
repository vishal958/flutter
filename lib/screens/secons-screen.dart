import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_1/providers/counter-provider.dart';
import 'package:flutter_application_1/providers/shopping-cart-provider.dart';

class ShoppingScreen extends StatelessWidget {
  const ShoppingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Shopping Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('${context.watch<Shoppingcart>().counts}'),
            Text('${context.watch<Shoppingcart>().cart}')
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.read<Shoppingcart>().addItme('Chicken'),
        tooltip: 'Add Item',
        child: Icon(Icons.add),
      ),
    );
  }
}
