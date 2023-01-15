import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final bookName;
  final bookAuthor;

  DetailsPage({this.heroTag, this.bookName, this.bookAuthor});

  @override
  _DetailsPageState createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  var selectedCard = 'WEIGHT';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.deepPurple,
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
          ),
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const Text('Details',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontSize: 18.0,
                  color: Colors.white)),
          centerTitle: true,
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.more_horiz),
              onPressed: () {},
              color: Colors.white,
            )
          ],
        ),
        body: ListView(children: [
          Stack(children: [
            Container(
                height: MediaQuery.of(context).size.height - 82.0,
                width: MediaQuery.of(context).size.width,
                color: Colors.transparent),
            Positioned(
                top: 75.0,
                child: Container(
                    decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(45.0),
                          topRight: Radius.circular(45.0),
                        ),
                        color: Colors.white),
                    height: MediaQuery.of(context).size.height - 100.0,
                    width: MediaQuery.of(context).size.width)),
            Positioned(
                top: 20.0,
                left: (MediaQuery.of(context).size.width / 2) - 120.0,
                child: Hero(
                    tag: widget.heroTag,
                    child: Container(
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(widget.heroTag),
                                fit: BoxFit.fitHeight)),
                        height: 250.0,
                        width: 250.0))),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(bottom: 50),
              ),
            ),
            Positioned(
                top: 300.0,
                left: 25.0,
                right: 25.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(widget.bookName,
                        style: const TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(height: 20.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(widget.bookAuthor,
                            style: const TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 20.0,
                                color: Colors.grey)),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Row(
                                children: const [
                                  Text("Published Year: ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          color: Colors.black)),
                                  Text("2015",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          color: Colors.grey)),
                                ],
                              ),

                              Row(
                                children: const [
                                  Text("Page Number: ",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          color: Colors.black)),
                                  Text("128",
                                      style: TextStyle(
                                          fontFamily: 'Montserrat',
                                          fontSize: 15,
                                          color: Colors.grey)),
                                ],
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.only(top: 20, bottom: 8),
                              child: const Text("Abstract",
                                  style: TextStyle(
                                      fontFamily: 'Montserrat',
                                      fontSize: 20.0,
                                      color: Colors.black)),
                            ),
                            Container(
                              padding: const EdgeInsets.only(bottom: 50),
                              child: ConstrainedBox(
                                constraints: const BoxConstraints(
                                  minWidth: 300.0,
                                  maxWidth: 300.0,
                                  minHeight: 30.0,
                                  maxHeight: 800.0,
                                ),
                                child: const Text(
                                    "An astonishing collection about interconnectedness—between the human and nonhuman, ancestors and ourselves—from National Book Critics Circle Award winner, National Book Award finalist and U.S. Poet Laureate Ada Limón.",
                                    style: TextStyle(
                                        fontFamily: 'Montserrat',
                                        fontSize: 20.0,
                                        color: Colors.grey)),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                    SizedBox(
                        height: 150.0,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[
                            _buildInfoCard('WEIGHT', '300', 'G'),
                            const SizedBox(width: 10.0),
                            _buildInfoCard('CALORIES', '267', 'CAL'),
                            const SizedBox(width: 10.0),
                            _buildInfoCard('VITAMINS', 'A, B6', 'VIT'),
                            const SizedBox(width: 10.0),
                            _buildInfoCard('AVAIL', 'NO', 'AV')
                          ],
                        )),
                    const SizedBox(height: 20.0),
                    /*
                    Padding(
                      padding: const EdgeInsets.only(bottom: 5.0),
                      child: Container(
                        decoration: const BoxDecoration(
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(10.0),
                                topRight: Radius.circular(10.0),
                                bottomLeft: Radius.circular(25.0),
                                bottomRight: Radius.circular(25.0)),
                            color: Colors.black),
                        height: 50.0,
                        child: const Center(
                          child: Text('\$52.00',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontFamily: 'Montserrat')),
                        ),
                      ),
                    )
                     */
                  ],
                ))
          ])
        ]));
  }

  Widget _buildInfoCard(String cardTitle, String info, String unit) {
    return InkWell(
        onTap: () {
          selectCard(cardTitle);
        },
        child: AnimatedContainer(
            duration: Duration(milliseconds: 500),
            curve: Curves.easeIn,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color:
                  cardTitle == selectedCard ? Color(0xFF7A9BEE) : Colors.white,
              border: Border.all(
                  color: cardTitle == selectedCard
                      ? Colors.transparent
                      : Colors.grey.withOpacity(0.3),
                  style: BorderStyle.solid,
                  width: 0.75),
            ),
            height: 100.0,
            width: 100.0,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 8.0, left: 15.0),
                    child: Text(cardTitle,
                        style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 12.0,
                          color: cardTitle == selectedCard
                              ? Colors.white
                              : Colors.grey.withOpacity(0.7),
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, bottom: 8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(info,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 14.0,
                                color: cardTitle == selectedCard
                                    ? Colors.white
                                    : Colors.black,
                                fontWeight: FontWeight.bold)),
                        Text(unit,
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontSize: 12.0,
                              color: cardTitle == selectedCard
                                  ? Colors.white
                                  : Colors.black,
                            ))
                      ],
                    ),
                  )
                ])));
  }

  selectCard(cardTitle) {
    setState(() {
      selectedCard = cardTitle;
    });
  }
}
