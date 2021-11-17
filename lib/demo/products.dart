import 'package:ecomm/demo/product_details.dart';
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Metronaut",
      "picture": "images/Metronaut.jpeg",
      "old_price": 600,
      "price": 550,
    },
    {
      "name": "Maroon Dress",
      "picture": "images/SheetalAssociates.jpeg",
      "old_price": 800,
      "price": 700,
    },
    {
      "name": "Casuals Sneaker",
      "picture": "images/Nike.jpeg",
      "old_price": 900,
      "price": 850,
    },
    {
      "name": "Tshirt",
      "picture": "images/Tshirt.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Metronaut",
      "picture": "images/Metronaut.jpeg",
      "old_price": 600,
      "price": 550,
    },
    {
      "name": "Maroon Dress",
      "picture": "images/SheetalAssociates.jpeg",
      "old_price": 800,
      "price": 700,
    },
    {
      "name": "Casuals Sneaker",
      "picture": "images/Nike.jpeg",
      "old_price": 900,
      "price": 850,
    },
    {
      "name": "Tshirt",
      "picture": "images/Tshirt.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Metronaut",
      "picture": "images/Metronaut.jpeg",
      "old_price": 600,
      "price": 550,
    },
    {
      "name": "Maroon Dress",
      "picture": "images/SheetalAssociates.jpeg",
      "old_price": 800,
      "price": 700,
    },
    {
      "name": "Casuals Sneaker",
      "picture": "images/Nike.jpeg",
      "old_price": 900,
      "price": 850,
    },
    {
      "name": "Tshirt",
      "picture": "images/Tshirt.jpeg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Maroon Dress",
      "picture": "images/SheetalAssociates.jpeg",
      "old_price": 650,
      "price": 550,
    },
    {
      "name": "Black Cotton",
      "picture": "images/adav.jpeg",
      "old_price": 800,
      "price": 700,
    },
    {
      "name": "Grey T-Shirt",
      "picture": "images/Tshirt.jpeg",
      "old_price": 600,
      "price": 500,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: new Text("hero 1"),
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                  // passing value of product to the product details
                  builder: (context) => new ProductDetails(
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_pricture,
                      ))),
              child: GridTile(
                  footer: Container(
                    color: Colors.white70,
                    child: new Row(
                      children: <Widget>[
                        Expanded(
                          child: Text(
                            prod_name,
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16.0),
                          ),
                        ),
                        new Text(
                          "\Rs.${prod_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        )
                      ],
                    ),
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}
