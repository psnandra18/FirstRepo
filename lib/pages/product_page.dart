import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetails extends StatelessWidget {
  final Item catalog;

  const ProductDetails({super.key, required this.catalog});

  @override
  Widget build(BuildContext context) {
    String dummyText =
        "Sit kasd ut dolores et voluptua eirmod gubergren, duo sit clita dolore amet et, justo sea lorem dolor clita aliquyam gubergren dolore diam diam, eos no amet no invidunt kasd no amet. Sit elitr labore erat aliquyam, gubergren erat aliquyam sit eirmod. Et et sit stet sit tempor tempor, rebum.";
    String dummyText2 =
        "Sit elitr labore erat aliquyam, gubergren erat aliquyam sit eirmod. Et et sit stet sit tempor tempor, rebum.";

    return Scaffold(
      appBar: AppBar(),
      backgroundColor: MyTheme.creamColor,
      bottomNavigationBar: ButtonBar(
        alignment: MainAxisAlignment.spaceBetween,
        buttonPadding: EdgeInsets.zero,
        children: [
          "\$${catalog.price}".text.bold.xl4.red800.make(),
          ElevatedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                      shape: MaterialStateProperty.all(
                    StadiumBorder(),
                  )),
                  child: "Add to Cart".text.xl.make())
              .wh(150, 50)
        ],
      ).p32().color(Colors.white),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
                    tag: Key(catalog.id.toString()),
                    child: Image.network(catalog.image))
                .h32(context)
                .p(8),
            Expanded(
              child: VxArc(
                height: 30,
                arcType: VxArcType.convey,
                edge: VxEdge.top,
                child: Container(
                  color: Colors.white,
                  width: context.screenWidth,
                  child: Column(
                    children: [
                      catalog.name.text.xl4.bold
                          .color(MyTheme.darkblusihColor)
                          .make(),
                      catalog.desc.text
                          .textStyle(context.captionStyle)
                          .color(MyTheme.darkblusihColor)
                          .xl
                          .make(),
                      10.heightBox,
                      dummyText.text
                          .textStyle(context.captionStyle)
                          .color(MyTheme.darkblusihColor)
                          .make()
                          .p16(),
                      dummyText2.text
                          .textStyle(context.captionStyle)
                          .color(MyTheme.darkblusihColor)
                          .make()
                          .p16(),
                    ],
                  ).py64(),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
