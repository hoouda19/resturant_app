import 'package:flutter/material.dart';

class Product {
  final String Name;
  final String subTitle;
  final String describtion;
  final String imageUrl;
  final double smallPrice;
  final double mediumPrice;
  final double bigPrice;
  final int ID;

  Product(
      {required this.Name,
      required this.subTitle,
      required this.describtion,
      required this.imageUrl,
      required this.smallPrice,
      required this.mediumPrice,
      required this.bigPrice,
      required this.ID});
}

List<Product> myDrink = [
  Product(
    Name: 'Lemons and Lemonade ',
    describtion: 'Fresh Lemons and Lemonade juice ',
    imageUrl:
        'https://i.pinimg.com/originals/f7/f7/5c/f7f75c87226c5cd29c07e2ebdc7425b2.jpg',
    smallPrice: 25,
    mediumPrice: 30,
    bigPrice: 35,
    ID: 1,
    subTitle: '',
  ),
  Product(
    Name: 'Watermelon Juice',
    describtion: 'REFRESHING WATERMELON JUICE ',
    imageUrl:
        'https://www.voyagestories.com/wp-content/uploads/2018/12/watermelon-juice-healthy-travel-recipe-voyage-stories-1024x1024.jpeg',
    smallPrice: 25,
    mediumPrice: 30,
    bigPrice: 35,
    ID: 2,
    subTitle: '',
  ),
  Product(
    Name: 'Cappuccino Espresso',
    describtion:
        'A cappuccino is an Italian coffee drink that is traditionally prepared with equal parts double espresso ',
    imageUrl:
        'https://i1.wp.com/www.certifiedpastryaficionado.com/wp-content/uploads/2017/04/4-4.jpg?resize=1327%2C1991',
    smallPrice: 30,
    mediumPrice: 37,
    bigPrice: 44,
    ID: 3,
    subTitle: '',
  ),
  Product(
    Name: 'Tea',
    describtion: ' Chai Tea',
    imageUrl:
        'https://img0.etsystatic.com/108/0/12344384/il_570xN.1019109694_pe42.jpg',
    smallPrice: 15,
    mediumPrice: 20,
    bigPrice: 25,
    ID: 4,
    subTitle: '',
  ),
  Product(
    Name: 'Dark Chocolate Ice Cream',
    describtion: 'Blueberry Skinny Soft Serve Ice Cream ',
    imageUrl:
        'https://i.pinimg.com/originals/d0/1d/d1/d01dd1778fa20311e52810656f4b4cb2.jpg',
    smallPrice: 30,
    mediumPrice: 40,
    bigPrice: 50,
    ID: 5,
    subTitle: '',
  ),
  Product(
    Name: ' Slenderberry ice cream',
    describtion: 'Strawberry Skinny Soft Serve Ice Cream - Slenderberry ',
    imageUrl:
        'https://th.bing.com/th/id/R.0188740f475ef5b706bb5961be5a7dd1?rik=tbDabDS6HvU22g&riu=http%3a%2f%2fd34fnyihxzicq1.cloudfront.net%2fwp-content%2fuploads%2f2017%2f07%2fstrawberry-soft-serve-square.jpg&ehk=5%2fWBY9JlPySjAkz7caNYUjogf5hrDTPrLO9fXeVHTww%3d&risl=&pid=ImgRaw&r=0',
    smallPrice: 30,
    mediumPrice: 40,
    bigPrice: 50,
    ID: 6,
    subTitle: '',
  ),
  Product(
    Name: 'Apple Juice',
    describtion: ' fresh apple juice',
    imageUrl:
        'https://th.bing.com/th/id/R.64155e2caca0e115640279d462f015a6?rik=RzT%2f6Y07p30hUQ&pid=ImgRaw&r=0',
    smallPrice: 25,
    mediumPrice: 35,
    bigPrice: 40,
    ID: 7,
    subTitle: '',
  ),
  Product(
    Name: 'Orange Juice',
    describtion: ' Yummy fresh Orange Juice',
    imageUrl:
        'https://i0.wp.com/www.healthline.com/hlcmsresource/images/AN_images/orange-juice-1296x728-feature.jpg?w=1155&h=1528',
    smallPrice: 20,
    mediumPrice: 25,
    bigPrice: 33,
    ID: 8,
    subTitle: '',
  ),
  Product(
    Name: 'Iced Coffee',
    describtion: 'Summer Drink Ice Coffee With Cream ',
    imageUrl:
        'https://forgetsugarfriday.com/wp-content/uploads/2019/04/keto-iced-coffee-healthful-pursuit.jpg',
    smallPrice: 25,
    mediumPrice: 35,
    bigPrice: 45,
    ID: 9,
    subTitle: '',
  ),
];
List<Product> myFood = [
  Product(
    Name: 'Pasta Salad with Spinach',
    describtion: 'Creamy Spinach Pasta Salad with Chicken ',
    imageUrl:
        'https://thefoodcafe.com/wp-content/uploads/2018/03/Creamy-Spinach-Pasta-Salad-with-Chicken-3-700x1050.jpg',
    smallPrice: 55,
    mediumPrice: 77,
    bigPrice: 85,
    ID: 12,
    subTitle: '',
  ),
  Product(
    Name: 'Pasta Salad with Shrimp',
    describtion: 'Smoky Shrimp Pasta Salad with Chipotle-Honey Vinaigrette . ',
    imageUrl:
        'https://i2.wp.com/www.icancookthat.org/wp-content/uploads/2012/05/IMG_02641.jpg?fit=1196%2C1200&ssl=1',
    smallPrice: 48,
    mediumPrice: 70,
    bigPrice: 80,
    ID: 13,
    subTitle: '',
  ),
  Product(
    Name: 'Pasta and Cheese',
    describtion: 'Pumpkin Macaroni and Cheese  ',
    imageUrl:
        'https://res.cloudinary.com/hi2pgeplz/image/upload/v1510178119/facebook-Linked_Image___Pumpkin-Mac-and-Cheese-1_h5x2nn.jpg',
    smallPrice: 50,
    mediumPrice: 75,
    bigPrice: 88,
    ID: 14,
    subTitle: '',
  ),
  Product(
    Name: 'Creamy White Sauce Pasta',
    describtion: ' Pasta with Kale, Stilton and Walnuts ',
    imageUrl:
        'https://i.pinimg.com/originals/4a/a8/21/4aa821e44d64cf75de38d9c20d78ee50.jpg',
    smallPrice: 70,
    mediumPrice: 90,
    bigPrice: 100,
    ID: 15,
    subTitle: '',
  ),
  Product(
    Name: 'Pasta Meat Sauce',
    describtion: ' Spaghetti with Meat Sauce',
    imageUrl:
        'https://i2.wp.com/www.imbored-letsgo.com/wp-content/uploads/2014/09/Spaghetti-with-Meat-Sauce.jpg?resize=680%2C839',
    smallPrice: 50,
    mediumPrice: 70,
    bigPrice: 90,
    ID: 16,
    subTitle: '',
  ),
  Product(
    Name: 'Spaghetti with Parmesan Cheese',
    describtion: ' Tasty Spaghetti Bolognese With Parmesan Cheese',
    imageUrl:
        'https://thumbs.dreamstime.com/b/tasty-spaghetti-bolognese-parmesan-cheese-25078159.jpg',
    smallPrice: 70,
    mediumPrice: 90,
    bigPrice: 120,
    ID: 17,
    subTitle: '',
  ),
  Product(
    Name: 'Classic Pepperoni Pizza',
    describtion:
        ' American pizza usually made with a mixture of beef, pork, and spices',
    imageUrl:
        'https://www.cooksifu.com/wp-content/uploads/2019/03/Pepperoni-pizza.jpg',
    smallPrice: 50,
    mediumPrice: 70,
    bigPrice: 100,
    ID: 18,
    subTitle: '',
  ),
  Product(
    Name: 'cheese Pizza',
    describtion: 'pizza with cheese such as mozzarella ',
    imageUrl:
        'https://barpizzaque.com/wp-content/uploads/2021/05/Cheese-Pizza.gif',
    smallPrice: 60,
    mediumPrice: 75,
    bigPrice: 90,
    ID: 19,
    subTitle: '',
  ),
  Product(
      Name: 'Margherita pizza',
      describtion: 'Margherita pizza with Tomato,Mozzarella and Basil ',
      imageUrl:
          'https://www.acouplecooks.com/wp-content/uploads/2018/10/Margherita-Pizza-018.jpg',
      smallPrice: 50,
      mediumPrice: 65,
      bigPrice: 80,
      subTitle: '',
      ID: 20),
  Product(
      Name: 'pizza dough',
      describtion: 'a lean, yeast-leavened bread-type dough ',
      imageUrl:
          'https://natashaskitchen.com/wp-content/uploads/2021/06/pizza-dough-sq-500x375.jpg',
      smallPrice: 40,
      subTitle: '',
      mediumPrice: 60,
      bigPrice: 70,
      ID: 21),
  Product(
      Name: 'seafood pizza',
      describtion:
          'shrimps,Grilled Calamari crabs,pizza sause and syami Mozzarella cheese ',
      imageUrl:
          'https://www.weightwatchers.com.au/images/3081/dynamic/foodandrecipes/2016/02/SeafoodPizza_XXL.jpg',
      smallPrice: 70,
      mediumPrice: 90,
      bigPrice: 110,
      subTitle: '',
      ID: 22),
  Product(
      Name: 'salmon pizza',
      describtion:
          'smoked salmon,caprese,dill,pizza sauce,syami,mozzarella cheese ',
      imageUrl:
          'https://cdn.shopify.com/s/files/1/0305/5921/articles/AdobeStock_128339304_1800x.jpg?v=1590784126',
      smallPrice: 75,
      mediumPrice: 95,
      bigPrice: 120,
      subTitle: '',
      ID: 23),
  Product(
    Name: 'Creamy peri peri chicken pasta',
    describtion:
        'This easy, creamy peri-peri chicken pasta with spicy sauce is the kind of showstopper meal that will ...‏ ',
    imageUrl:
        'https://th.bing.com/th?q=Curly+Pasta&w=120&h=120&c=1&rs=1&qlt=90&cb=1&dpr=1.25&pid=InlineBlock&mkt=en-XA&adlt=strict&t=1&mw=247',
    smallPrice: 55,
    mediumPrice: 70,
    bigPrice: 80,
    subTitle: '',
    ID: 10,
  ),
  Product(
    Name: 'Best Tomato Chicken Pasta',
    describtion: 'ROASTED CHICKEN AND TOMATO PASTA ',
    imageUrl:
        'https://i.pinimg.com/originals/a2/2b/57/a22b5795424b9e9b5cc020ae5baa3442.jpg',
    smallPrice: 50,
    mediumPrice: 90,
    bigPrice: 90,
    subTitle: '',
    ID: 11,
  ),
];
