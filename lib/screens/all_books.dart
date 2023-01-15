import 'package:books_store/screens/details.dart';
import 'package:flutter/material.dart';

class AllBooks extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 15.0, left: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                  onPressed: () {},
                ),
                SizedBox(
                    width: 125.0,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        IconButton(
                          icon: const Icon(Icons.filter_list),
                          color: Colors.white,
                          onPressed: () {},
                        ),
                        IconButton(
                          icon: const Icon(Icons.menu),
                          color: Colors.white,
                          onPressed: () {},
                        )
                      ],
                    ))
              ],
            ),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 40.0),
            child: Column(
              children: [
                Row(
                  children: <Widget>[
                    Text('All Books',
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25.0)),
                    SizedBox(width: 10.0),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 50.0),
          Container(
            height: MediaQuery.of(context).size.height - 185.0,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(75.0)),
            ),
            child: ListView(
              primary: false,
              padding: const EdgeInsets.only(left: 25.0, right: 20.0),
              children: <Widget>[
                Padding(
                    padding: EdgeInsets.only(top: 45.0),
                    child: Container(
                        height: MediaQuery.of(context).size.height - 300.0,
                        child: ListView(children: [
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'İçimizdeki Şeytan', '\Sabahattin Ali'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Salmon bowl', '\$24.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Spring bowl', '\$22.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Avocado bowl', '\$26.00'),
                          _buildFoodItem('assets/book_pics/scifi.png',
                              'Berry bowl', '\$24.00')
                        ]))),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildFoodItem(String imgPath, String bookName, String bookAuthor) {
    return Padding(
        padding: const EdgeInsets.only(left: 10.0, right: 10.0, top: 10.0),
        child: InkWell(
            onTap: () {
              Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsPage(
                      heroTag: imgPath,
                      bookName: bookName,
                      bookAuthor: bookAuthor)));
            },
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                    child: Row(children: [
                  Hero(
                      tag: imgPath,
                      child: Image(
                        image: AssetImage(imgPath),
                        fit: BoxFit.cover,
                        height: 120.0,
                      )),
                  SizedBox(width: 10.0),
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(bookName,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 17.0,
                                fontWeight: FontWeight.bold)),
                        Text(bookAuthor,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                color: Colors.grey))
                      ])
                ])),
                // yana icon koyabilirsiniz
              ],
            )));
  }
}
