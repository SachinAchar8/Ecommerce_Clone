import 'package:ecomm/demo/home.dart';
import 'package:flutter/material.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails(
      {this.product_detail_name,
      this.product_detail_new_price,
      this.product_detail_old_price,
      this.product_detail_picture});
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: new AppBar(
          elevation: 0.1,
          backgroundColor: Colors.black,
          title: InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new HomePage()));
              },
              child: Text('Shopping')),
          actions: <Widget>[
            new IconButton(
                icon: Icon(Icons.search, color: Colors.white),
                onPressed: () {}),
          ],
        ),
        body: new ListView(
          children: <Widget>[
            new Container(
              height: 300.0,
              child: GridTile(
                child: Container(
                  color: Colors.black87,
                  child: Image.asset(widget.product_detail_picture),
                ),
                footer: new Container(
                  color: Colors.black87,
                  child: ListTile(
                    leading: new Text(
                      widget.product_detail_name,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 16.0),
                    ),
                    title: new Row(
                      children: <Widget>[
                        Expanded(
                          child: new Text(
                            "\Rs.${widget.product_detail_old_price}",
                            style: TextStyle(
                                color: Colors.white70,
                                decoration: TextDecoration.lineThrough),
                          ),
                        ),
                        Expanded(
                            child: new Text(
                          "\Rs.${widget.product_detail_new_price}",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.redAccent),
                        ))
                      ],
                    ),
                  ),
                ),
              ),
            ),

            //------------First Button-------------
            Row(children: <Widget>[
              // ----------The size of the button---------
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Size"),
                            content: new Text("Choose the Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Size")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Color"),
                            content: new Text("Choose the Size"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Color")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(
                        context: context,
                        builder: (context) {
                          return new AlertDialog(
                            title: Text("Size"),
                            content: new Text("Choose the Qty"),
                            actions: <Widget>[
                              new MaterialButton(
                                onPressed: () {
                                  Navigator.of(context).pop(context);
                                },
                                child: new Text("Close"),
                              )
                            ],
                          );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.grey,
                  child: Row(
                    children: [
                      Expanded(child: new Text("Qty")),
                      Expanded(
                        child: new Icon(Icons.arrow_drop_down),
                      )
                    ],
                  ),
                ),
              ),
            ]),

            //------------Second Button-------------
            Row(
              children: <Widget>[
                // ----------The size of the button---------
                Expanded(
                  child: MaterialButton(
                      onPressed: () {},
                      color: Colors.redAccent,
                      textColor: Colors.white,
                      elevation: 10,
                      child: new Text("Buy now")),
                ),

                new IconButton(
                    icon: Icon(Icons.add_shopping_cart),
                    color: Colors.redAccent,
                    onPressed: () {}),
                new IconButton(
                    icon: Icon(Icons.favorite_border),
                    color: Colors.redAccent,
                    onPressed: () {}),
              ],
            ),
            Divider(),
            new ListTile(
              title: new Text("Product Details"),
              subtitle: new Text(
                  'Disclaimer: Product comes in assorted prints. Actual colours and prints might vary from the image shown here All Day Fresh Technology draws moisture away from skin, keeping you cool, dry, and fresh. It reduces >99% growth of odour causing bacteria on contact, keeping you fresh all day long.Made of 100% super combed cotton, this sleeveless undershirt is ideal for daily wear. Label free comfort.'),
            ),
            Divider(),
            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Name",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text(widget.product_detail_name),
                ),
              ],
            ),

            new Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Brand",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("Brand X"),
                ),
              ],
            ),

            new Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                  child: new Text(
                    "Product Condition",
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(5.0),
                  child: new Text("New"),
                ),
              ],
            ),

            Divider(),
            Padding(
              padding: EdgeInsets.all(5.0),
              child: new Text("New"),
            ),
            new Text("Similar Product"),

//SIMILAR PRODUCT SECTION
            Container(
              height: 340.0,
              child: Similar_products(),
            )
          ],
        ));
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {
  var product_list = [
    {
      "name": "Metronaut",
      "picture": "Metronaut.jpeg",
      "old_price": 700,
      "price": 600,
    },
    {
      "name": "Casuals Sneaker",
      "picture": "images/Nike.jpeg",
      "old_price": 900,
      "price": 850,
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
          return Similar_single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_single_prod({
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
