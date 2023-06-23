// ignore_for_file: prefer_const_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

import '../core/store.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Cart".text.make(),
      ),
      body: Column(
        children: [
          Cartlist().p32().expand(),
          Divider(),
          _CartTotal(),
        ],
      ),
    );
  }
}

class _CartTotal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          VxConsumer(
            mutations: {RemoveMutation},
            builder: (context, _, __) {
              return "\$${_cart.totalPrice}"
                  .text
                  .xl5
                  .color(MyTheme.darkblusihColor)
                  .make();
            },
          ),
          30.widthBox,
          ElevatedButton(
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                    content: "Chal be, nikal Garreb!!"
                        .text
                        .fontWeight(FontWeight.bold)
                        .make()));
              },
              child: "Buy Now".text.make()),
        ],
      ),
    );
  }
}

class Cartlist extends StatelessWidget {
  @override
  Widget build(BuildContext context) { 
    return VxConsumer(
      mutations: {RemoveMutation},
      builder: (context, _, __) {
        final CartModel _cart = (VxState.store as MyStore).cart;

        return _cart.items.isEmpty
            ? "Cart is Empty!!"
                .text
                .color(MyTheme.darkblusihColor)
                .xl2
                .makeCentered()
            : ListView.builder(
                itemCount: _cart.items?.length,
                itemBuilder: (context, index) => ListTile(
                  leading: Icon(Icons.done),
                  trailing: IconButton(
                    onPressed: () => RemoveMutation(_cart.items[index]),
                    icon: Icon(Icons.remove_circle_outline),
                  ),
                  title: _cart.items[index].name.text.make(),
                ),
              );
      },
    );
  }
}
