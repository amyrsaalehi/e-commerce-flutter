import 'package:flutter/material.dart';
import '../models/Product.dart';
import '../shared/heart.dart';

class Details extends StatelessWidget {

  final Product product;
  Details({ @required this.product });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      extendBodyBehindAppBar: true,
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ClipRRect(
                child: Hero(
                  tag: 'location-img-${product.img}',
                  child: Image.asset(
                    'assets/images/${product.img}',
                    height: 360,
                    fit: BoxFit.cover,
                    alignment: Alignment.topCenter,
                  ),
                )
              ),
              SizedBox(height: 30),
              ListTile(
                title: Text(
                  product.title,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    color: Colors.grey[800]
                  )
                ),
                subtitle: Text(
                  'Price: \$${product.price}',
                  style: TextStyle(letterSpacing: 1)
                ),
                trailing: Heart()
              ),
              Padding(
                padding: EdgeInsets.all(18),
                child: Text(
                 product.desc,
                  style: TextStyle(
                    color: Colors.grey[600],
                    height: 1.4
                  )
                )
              ),
            ],
          ),
        ),
      )
    );
  }
}