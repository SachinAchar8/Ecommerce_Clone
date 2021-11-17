import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/informal.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/shoe.png',
            image_caption: 'Shoes',
          ),
          Category(
            image_location: 'images/formal.png',
            image_caption: 'Formals',
          ),
          Category(
            image_location: 'images/jeans.png',
            image_caption: 'Jeans',
          ),
          Category(
            image_location: 'images/tshirt.png',
            image_caption: 'T-Shirts',
          ),
          Category(
            image_location: 'images/accessories.png',
            image_caption: 'Accessories',
          ),
        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 100.0,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 50.0,
              height: 50.0,
            ),
            subtitle: Text(image_caption),
          ),
        ),
      ),
    );
  }
}
