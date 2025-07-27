import 'package:flutter/material.dart';
import 'package:furniture_app/models/product.dart';

class ProductsItem extends StatefulWidget {
  final Product product;

  const  ProductsItem({super.key, required this.product});

  @override
  State< ProductsItem> createState() => _ProductCardState();
}

class _ProductCardState extends State< ProductsItem> {
   late bool _isLiked;
  @override
  void initState() {
    super.initState();
   _isLiked = widget.product.isLoved;
  }

  void _switchFavorite() {
    setState(() {
     _isLiked = !_isLiked;
    });
  }

  @override
  Widget build(BuildContext context) {
     final product = widget.product;
    return Container(
      color: const Color.fromARGB(255, 247, 240, 240),
      child: Row(
        children: [
          Image.asset(product.imageLink,
              width: 100, height: 100, fit: BoxFit.cover),
           SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(product.title,
                    style: Theme.of(context).textTheme.headlineMedium),
                Text(product.subtitle,style: Theme.of(context).textTheme.headlineSmall ),
                 SizedBox(height: 8),
                Row(
                  children: [
                    Container(
                      
                      height: 40,
                      color: Colors.amber,
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text('\$${product.price}',
                            style:  TextStyle(fontWeight: FontWeight.bold, color: Colors.white,fontSize: 18),
                            
                            ),
                      ),
      
                    ),
                    // SizedBox(width: 10),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Theme.of(context).primaryColor,
                        shape: ContinuousRectangleBorder(side: BorderSide.none)
                      ),
                      child: Text('Add to cart',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 18) ),
                    ),
                  ],
                )
              ],
            ),
          ),
          IconButton(
            icon: Icon(
              _isLiked ? Icons.favorite : Icons.favorite_border,
              color: _isLiked? Colors.red : Colors.grey,
            ),
            onPressed: _switchFavorite,
          ),
        ],
      ),
    );
  }
}