import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Container(
              height: 200,
              color: Colors.blue,
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children:const [
                  CircleAvatar(
                    radius: 36,
                    child: Icon(Icons.person),
                  ),
                  SizedBox(height: 10,),
                  Text("Shahriyorbek", style: TextStyle(fontSize: 18),),
                  Text("tursunovshahriyorbek@gmail.com"),
                ],
              ),
            ),
          ],
        ),
      ),

      backgroundColor: Colors.white,

      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        title: const Text("Cars", style: TextStyle(color: Colors.red, fontSize: 25),),
        actions: [
          IconButton(
            onPressed: (){
            },
            icon: const Icon(Icons.notifications_none , color: Colors.red,),
          ),
          IconButton(
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart_outlined, color: Colors.red,),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTap(true, "All",),
                    singleTap(false, "Red"),
                    singleTap(false, "Blue"),
                    singleTap(false, "Green"),
                    singleTap(false, "Greey"),
                  ],
                ),
              ),
              const SizedBox(height: 20 ,),
              makeItem("assets/images/im_car1.jpg"),
              makeItem("assets/images/im_car2.jpg"),
              makeItem("assets/images/im_car3.jpg"),
              makeItem("assets/images/im_car4.png"),
              makeItem("assets/images/im_car5.jpg"),

            ],
          ),
        ),
      ),
    );
  }

  Widget singleTap(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        margin: const EdgeInsets.only(right: 10,),
        decoration: BoxDecoration(
          color: type ? Colors.red : Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: TextStyle(
            fontSize: type ? 20 : 17,
            color: type ? Colors.white : Colors.grey,
          ),),
        ),
      ),
    );
  }

  Widget singleTab(bool type,String text){
    return AspectRatio(
      aspectRatio: 2.2/1,
      child: Container(
        margin: EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: type ? Colors.red:Colors.white,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(text, style: TextStyle(fontSize: type? 20:17, color: type? Colors.white:Colors.black),),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(
          image: AssetImage(image),
          fit: BoxFit.cover,
        ),
        boxShadow: [
          BoxShadow(
              color: Colors.grey.shade400,
              blurRadius: 10,
              offset: const Offset(0, 10)
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black.withOpacity(.9),
              Colors.black.withOpacity(.6),
              Colors.black.withOpacity(.3),
              Colors.black.withOpacity(.2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: const [
                    Text("Sport Car", style: TextStyle(color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.bold),),
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: Text("Electric",style: TextStyle(color: Colors.red,
                          fontSize: 18,
                          fontWeight: FontWeight.bold),),
                    )
                  ],
                ),
                const SizedBox(height: 10,),
                const Text("100000\$", style: TextStyle(color: Colors.white, fontSize: 25, fontWeight: FontWeight.bold),),

              ],
            ),


            Container(
              width: 35,
              height: 35,
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.red,
              ),
              child: const Center(
                child: Icon(Icons.favorite_border, size: 20,
                  color: Colors.grey,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
