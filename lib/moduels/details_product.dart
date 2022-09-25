import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '/constant/constant.dart';
import '/model/addTocart.dart';
import '/model/product.dart';

class DetailsProduct extends StatefulWidget {
  final Product product;
  final String typeOfText;

  const DetailsProduct({required this.product, required this.typeOfText});

  @override
  _DetailsProductState createState() => _DetailsProductState();
}

class _DetailsProductState extends State<DetailsProduct> {
  int _numPices = 1;
  int groupValue = -1;
  var ScaffoldKey = GlobalKey<ScaffoldState>();
  bool Success = false;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: size.width,
        height: size.height,
        child: Stack(
          children: [
            buildContainerHeaderImage(size),
            Padding(
              padding: EdgeInsets.symmetric(vertical: size.width * 0.1),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                      print('dsgsdgs');
                    },
                    icon: Icon(
                      Icons.arrow_back,
                      size: 30,
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            buildContainerGeniralInfo(size),
            Positioned(
              bottom: 0,
              child: Container(
                padding: EdgeInsets.only(top: 30, left: 20),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30),
                  ),
                ),
                width: size.width,
                height: size.height * .55,
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Particulars",
                        style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.black,
                            fontSize: 30),
                      ),
                      SizedBox(height: size.height * .02),
                      Text(
                        widget.product.describtion!,
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.w400,
                            color: Colors.black),
                      ),
                      SizedBox(height: size.height * .02),
                      buildRowStars(),
                      SizedBox(height: size.height * .02),
                      Row(
                        children: [
                          buildContainerOption(size,
                              text: '500ml', icon: Icons.local_drink),
                          buildContainerOption(size,
                              text: 'less ice', icon: Icons.ac_unit),
                          buildContainerOption(size,
                              text: 'sugar', icon: Icons.add_business_outlined),
                        ],
                      ),
                      buildContainerNumPices(size),
                      //SizedBox(height: size.height,)
                      buildRadioListTile(
                          'Small', widget.product.smallPrice!, 1),
                      buildRadioListTile(
                          'Medium', widget.product.mediumPrice!, 2),
                      buildRadioListTile('Big', widget.product.bigPrice!, 3),

                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          ElevatedButton.icon(
                            onPressed: () {
                              final SB = SnackBar(
                                content: Text(
                                  groupValue != -1
                                      ? 'Add To Cart Successfully'
                                      : 'Please Choose Size of product',
                                  style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                ),
                                backgroundColor: groupValue != -1
                                    ? Colors.green
                                    : Colors.red,
                              );

                              ScaffoldMessenger.of(context).showSnackBar(SB);
                              double totalPrice;
                              String size;
                              if (Success == false && groupValue != -1) {
                                if (groupValue == 1) {
                                  totalPrice =
                                      _numPices * widget.product.smallPrice!;
                                  size = 'Small';
                                } else if (groupValue == 2) {
                                  totalPrice =
                                      _numPices * widget.product.mediumPrice!;
                                  size = 'Medium';
                                } else {
                                  totalPrice =
                                      _numPices * widget.product.bigPrice!;
                                  size = 'Big';
                                }
                                if (groupValue != -1) {
                                  AddToCart ChooseProduct = AddToCart(
                                    imageUrl: widget.product.imageUrl!,
                                    numberOfpices: _numPices,
                                    Price: totalPrice,
                                    name: widget.product.name!,
                                    size: size,
                                  );
                                  myCart.add(ChooseProduct);
                                  print(myCart[0].name);
                                }
                                Navigator.pop(context);
                              }
                              if (groupValue != -1) {
                                Success = true;
                              }
                            },
                            icon: Icon(Icons.add_shopping_cart_outlined),
                            label: Text('Add To Cart'),
                            style: TextButton.styleFrom(
                                backgroundColor: KprimaryColor,
                                padding: EdgeInsets.symmetric(
                                    horizontal: size.width * .25,
                                    vertical: size.width * .03),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(20))),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  RadioListTile<int> buildRadioListTile(String text, double price, int number) {
    return RadioListTile(
      value: number,
      groupValue: groupValue,
      onChanged: (value) {
        setState(() {
          groupValue = value!;
        });
      },
      title: Text(
        '  ${text}',
        style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: groupValue == number ? KprimaryColor : Colors.grey),
      ),
      subtitle: Text(
        '  Price is ${price} \$',
        style: TextStyle(fontSize: 15),
      ),
      activeColor: KprimaryColor,
      secondary: Icon(
        Icons.check_circle_outline,
        color: number == groupValue ? KprimaryColor : Colors.grey,
        size: 30,
      ),
    );
  }

  Container buildContainerNumPices(Size size) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Row(
        children: [
          Text(
            "Number of Items",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Spacer(),
          Container(
            width: size.width * .4,
            height: 55,
            decoration: BoxDecoration(
              color: KprimaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
                top: Radius.circular(30),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                    onPressed: () {
                      setState(() {
                        if (_numPices > 1) _numPices--;
                      });
                    },
                    icon: Icon(
                      Icons.remove,
                      size: 30,
                      color: Colors.white,
                    )),
                Text(
                  "$_numPices",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      _numPices++;
                    });
                  },
                  icon: Icon(
                    Icons.add,
                    size: 30,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Padding buildContainerOption(Size size, {icon, text}) {
    return Padding(
      padding: EdgeInsets.only(right: 10),
      child: Container(
        width: size.width * .18,
        height: size.height * .1,
        decoration: BoxDecoration(
          color: KprimaryColor.withOpacity(.2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: KprimaryColor,
              size: 35,
            ),
            Text(
              text,
              style: TextStyle(
                color: KprimaryColor,
                fontSize: 17,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Row buildRowStars() {
    return Row(
      children: [
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star,
          color: KprimaryColor,
          size: 25,
        ),
        Icon(
          Icons.star_half,
          color: KprimaryColor,
          size: 25,
        ),
      ],
    );
  }

  Container buildContainerGeniralInfo(Size size) {
    return Container(
      width: size.width * 1,
      height: size.height * .5,
      //color: Colors.red,
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 40),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: size.height * .07,
          ),
          Text(
            widget.product.name!,
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          Text(
            widget.typeOfText,
            style: TextStyle(
                fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
          ),
          SizedBox(
            height: size.height * .02,
          ),
          Text(
            '${widget.product.mediumPrice} \$',
            style: TextStyle(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
        ],
      ),
    );
  }

  Container buildContainerHeaderImage(Size size) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
      ),
      width: size.width,
      height: size.height * .53,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          bottomLeft: Radius.circular(30),
          bottomRight: Radius.circular(30),
        ),
        child: Opacity(
          opacity: .6,
          child: Hero(
            tag: '${widget.product.id}',
            child: Image.network(
              widget.product.imageUrl!,
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
