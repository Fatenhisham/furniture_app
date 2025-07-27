import 'package:flutter/material.dart';
import 'package:furniture_app/component/buttonnavigation.dart';
import 'package:furniture_app/component/products_item.dart';
import 'package:furniture_app/models/product.dart';
import 'package:furniture_app/theme/image_theme.dart';
// import 'package:furniture_app/theme/theme_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
            child: Padding(
              padding: const EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    radius: 45,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 40,
                      backgroundImage: AssetImage('assets/images/me.jpeg'),
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Hello , Pino ',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  Text(
                    'What do you want to buy? ',
                    style: Theme.of(context).textTheme.headlineLarge,
                  ),
                  SizedBox(height: 20),
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search',
                      prefixIcon: Icon(Icons.search),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    children: [
                      ImageTheme(imagePath: 'assets/images/sofa.png'),
                      Text(
                        'Sofas',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ImageTheme(imagePath: 'assets/images/Wardrobe.png'),
                      Text(
                        'Wardrobe',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ImageTheme(imagePath: 'assets/images/Desk.jpeg'),
                      Text(
                        'Desk',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      ImageTheme(imagePath: 'assets/images/Dresser.png'),
                      Text(
                        'Dresser',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 30,) , 
          ProductsItem(
            product: Product(
              imageLink: 'assets/images/ottoman.jpg',
              title: 'FinnNavian',
              subtitle:
                  'Scandinavian small sized double safe imported full leather',
              price: 248,
            ),
          ),
          SizedBox(height: 20,) , 
           ProductsItem(
            product: Product(
              imageLink: 'assets/images/chair.jpg',
              title: 'FinnNavian',
              subtitle:
                  'Scandinavian small sized double safe imported full leather',
              price: 200,
            ),
          ),
          
        ],
      ),
      bottomNavigationBar: Buttonnavigation(),
    );
  }
}
