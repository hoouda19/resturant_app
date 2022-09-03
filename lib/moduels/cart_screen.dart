import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '/constant/constant.dart';
import '/model/addTocart.dart';

class CartScreen extends StatefulWidget {
  @override
  _CartScreenState createState() => _CartScreenState();
}
class _CartScreenState extends State<CartScreen> {
  bool isVisble=true;
  double TotalPrice=0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    calculateTotalPrice();


  }
  void calculateTotalPrice(){
  setState(() {
    TotalPrice=0;
    myCart.forEach((element) {
      TotalPrice+=element.Price;
    });
  });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: size.height*0.09),
            Text(
              "Shopping cart",
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: size.height*.01,
            ),
            Text(
              "A total is ${myCart.length} pieces",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,color: Colors.grey),
            ),
            SizedBox(
              height: size.height * .03,
            ),
            Container(
              alignment: Alignment.center,

              height: size.height*.6,

              child: myCart.length==0? Column(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  Icon(Icons.add_shopping_cart_outlined,size: 60,color: KprimaryColor,),
                  Text('No Item Choose',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.grey),),
                ],
              ): ListView.builder(
                  itemCount: myCart.length,
                  itemBuilder: (_, index) {
                    return buildContainerCart(myCart[index],size,isVisble);
                  }),
            ),
            SizedBox(height: size.height*0.02,),
             Center(
               child: Container(
                 padding: EdgeInsets.symmetric(horizontal: size.width*.001),
                  alignment: Alignment.center,
                  height: size.height*0.1,
                  width: size.width*.8,
                  decoration: BoxDecoration(
                    color: KprimaryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Padding(
                      padding:  EdgeInsets.all(10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            '  Total ',
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          SizedBox(width: 10,),
                          Text(
                            '${TotalPrice} \$',
                            style: TextStyle(
                                fontSize: 25,
                                color: Colors.black,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                          Spacer(),
                          Text(
                            'Next',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.w600
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
             ),

          ],
        ),
      ),
    );
  }

  Visibility buildContainerCart(AddToCart product,Size size,bool isV) {
    return Visibility(
      visible: product.show,
      child: Container(
        margin: EdgeInsets.only(bottom: 10,right: 5),

        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
          boxShadow: [
            BoxShadow(
              color: Colors.grey,
              blurRadius: 10.0,
             // offset: Offset(10,10)
              
            ),
          ],

        ),
        padding: EdgeInsets.only(top: 0),
        width: size.width,
        height: size.height * .19,
        child: Row(
          children: [
            Container(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.fill,
                ),
              ),
              width: size.width * .25,
              height: size.height * .18,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: size.width * 0.4,

                    child: Text(
                      product.name,
                      style: TextStyle(
                        fontSize: 22,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  SizedBox(height: 7,),
                  Text(
                    '${product.numberOfpices}  ${product.size}',
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.grey,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Spacer(),
                  Text(
                      '${product.Price} \$',
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w700,
                        color: KprimaryColor),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    onPressed: () {
                     setState(() {
                       product.show=false;
                       myCart.remove(product);
                       calculateTotalPrice();
                     });
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 30,
                      color: Colors.red,
                    ),
                  ),
                  Text(
                    'Remove',
                    style: TextStyle(color: Colors.red),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildPaddingHeader(Size size) {
    return Padding(
      padding: EdgeInsets.only(top: size.height * .03),
      child: Row(
        children: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.arrow_back_outlined,
              color: Colors.black,
              size: 30,
            ),
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.black,
              size: 30,
            ),
          ),
        ],
      ),
    );
  }
}
