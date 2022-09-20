import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '/constant/constant.dart';
import '/model/addTocart.dart';
import '/model/product.dart';
import '/moduels/details_product.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * 0.1,
          ),
          buildHeaderRow(),
          SearchWidget(size, context),
          SizedBox(height: size.height * 0.02),
          Itemproduct('Drink'),
          SizedBox(height: size.height * 0.005),
          Container(
            margin: EdgeInsets.symmetric(horizontal: size.width * .01),
            height: size.height * 0.25,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: myDrink.length,
              itemBuilder: (_, index) {
                return buildDrinkItem(size, myDrink[index]);
              },
            ),
          ),
          SizedBox(height: size.height * 0.005),
          Itemproduct('Food'),
          SizedBox(height: size.height * 0.005),
          Container(
            height: size.height * .5,
            // color: Colors.red,
            child: ListView.builder(
              itemCount: myFood.length,
              itemBuilder: (_, index) {
                return buildFoodItem(size, myFood[index]);
              },
            ),
          ),
        ],
      ),
    );
  }

  GestureDetector buildFoodItem(Size size, Product product) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsProduct(
                      product: product,
                      typeOfText: 'FOOD',
                    )));
      },
      child: Container(
        margin:
            EdgeInsets.symmetric(horizontal: size.width * 0.05, vertical: 7),
        width: size.width,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width: size.width * .23,
              height: size.height * .1,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Hero(
                  tag: '${product.ID}',
                  child: Image.network(
                    product.imageUrl,
                    fit: BoxFit.fill,
                  ),
                ),
              ),
            ),
            SizedBox(
              width: size.width * .06,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: size.width * .4,
                  child: Text(
                    product.Name,
                    style: TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
                SizedBox(
                  height: size.height * .003,
                ),
                Text(
                  'Food Product',
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            Spacer(),
            Text(
              "${product.mediumPrice} EGP",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w800),
            ),
          ],
        ),
      ),
    );
  }

  GestureDetector buildDrinkItem(Size size, Product product) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailsProduct(
                      product: product,
                      typeOfText: 'Drink',
                    )));
      },
      child: Container(
        margin: EdgeInsets.only(left: 15, top: 7, bottom: 7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Stack(
          children: [
            Opacity(
              opacity: 1,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(20),
                child: Container(
                  height: size.height * 0.25,
                  width: size.width * 0.35,
                  child: Hero(
                    tag: '${product.ID}',
                    child: Image.network(
                      product.imageUrl,
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.only(left: 5, bottom: 5),
                decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.5),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20)),
                ),
                width: size.width * 0.35,
                height: size.height * 0.07,
                child: Text(
                  product.Name,
                  style: TextStyle(
                      fontSize: 19,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding Itemproduct(text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 30, color: KprimaryColor, fontWeight: FontWeight.w500),
      ),
    );
  }

  Container SearchWidget(Size size, context) {
    return Container(
      height: size.height * 0.05,
      margin: EdgeInsets.symmetric(
          horizontal: size.width * .1, vertical: size.height * 0.01),
      child: GestureDetector(
        onTap: () {},
        child: TextField(
          decoration: InputDecoration(
            filled: true,
            fillColor: Color(0xffF6F6F2),
            labelText: 'Search',
            labelStyle: TextStyle(fontSize: 18, color: Colors.grey),
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 0),
            prefixIcon: IconButton(
                onPressed: () {},
                icon: SvgPicture.asset(
                  'assets/icon/search.svg',
                  color: Colors.grey,
                )),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
              borderSide: BorderSide(color: Colors.transparent),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }

  Row buildHeaderRow() {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
            'Venus',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
        ),
        Spacer(),
        Stack(
          children: [
            IconButton(
                icon: Icon(
                  Icons.add_shopping_cart,
                  size: 30,
                ),
                onPressed: () {}),
            CircleAvatar(
              radius: 10,
              child: Text('${myCart.length}'),
              backgroundColor: Colors.red,
            ),
          ],
        ),
      ],
    );
  }
}
