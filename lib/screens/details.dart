import 'package:books_store/screens/allBooks_screen.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final heroTag;
  final bookName;
  final bookAuthor;
  final bookPublishedYear;
  final bookPageNumber;
  final bookSummary;

  DetailsPage(
      {this.heroTag,
      this.bookName,
      this.bookAuthor,
      this.bookPublishedYear,
      this.bookPageNumber,
      this.bookSummary});

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
        body: Column(
          children: <Widget>[
            Positioned(
                child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(45.0),
                    topRight: Radius.circular(45.0),
                  ),
                  color: Colors.white),
            )),
            const SizedBox(
              child: Padding(
                padding: EdgeInsets.only(bottom: 10),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.deepPurple,
                child: LayoutBuilder(
                  builder: (context, constraint) {
                    return SingleChildScrollView(
                      child: ConstrainedBox(
                        constraints:
                            BoxConstraints(minHeight: constraint.maxHeight),
                        child: IntrinsicHeight(
                          child: Column(
                            children: [
                              Positioned(
                                  child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Hero(
                                    tag: widget.heroTag,
                                    child: Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                image:
                                                    AssetImage(widget.heroTag),
                                                fit: BoxFit.fitHeight)),
                                        height: 300.0,
                                        width: 300.0)),
                              )),
                              Positioned(
                                  top: 85.0,
                                  child: Container(
                                    decoration: const BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          topLeft: Radius.circular(45.0),
                                          topRight: Radius.circular(45.0),
                                        ),
                                        color: Colors.white),
                                    height: MediaQuery.of(context).size.height,
                                    width: MediaQuery.of(context).size.width,
                                    child: Row(
                                      children: [
                                        Container(
                                          padding: const EdgeInsets.only(
                                              top: 40, left: 20),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Row(
                                                children: [
                                                  Center(
                                                    child: Container(
                                                      padding:
                                                          const EdgeInsets.only(bottom: 10),
                                                      child: ConstrainedBox(
                                                        constraints:
                                                            const BoxConstraints(
                                                          minWidth: 80.0,
                                                          maxWidth: 320.0,
                                                          minHeight: 30.0,
                                                          maxHeight: 120.0,
                                                        ),
                                                        child: Text(
                                                            widget.bookName,
                                                            style: const TextStyle(
                                                                fontFamily:
                                                                    'Montserrat',
                                                                fontSize: 25.0,
                                                                fontWeight: FontWeight.w900,
                                                                letterSpacing: 1.6,
                                                                color: Colors
                                                                    .black)),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  const Text("Author Name: ",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .black)),
                                                  Text(widget.bookAuthor,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                          color: Colors.black))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  const Text("Published Year: ",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .black)),
                                                  Text(widget.bookPublishedYear,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                          color: Colors.black))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(
                                                children: [
                                                  const Text("Page Number: ",
                                                      style: TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 18.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors
                                                              .black)),
                                                  Text(widget.bookPageNumber,
                                                      style: const TextStyle(
                                                          fontFamily:
                                                              'Montserrat',
                                                          fontSize: 20,
                                                          color: Colors.black))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 10,
                                              ),
                                              Row(children: [
                                                Column(children: [
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            top: 20, bottom: 8),
                                                    child: const Text(
                                                        "Abstract",
                                                        style: TextStyle(
                                                            fontFamily:
                                                                'Montserrat',
                                                            fontSize: 20.0,
                                                            fontWeight:
                                                                FontWeight.bold,
                                                            color: Colors
                                                                .black)),
                                                  ),
                                                  Container(
                                                    padding:
                                                        const EdgeInsets.only(
                                                            bottom: 50),
                                                    child: ConstrainedBox(
                                                      constraints:
                                                          const BoxConstraints(
                                                        minWidth: 300.0,
                                                        maxWidth: 350.0,
                                                        minHeight: 30.0,
                                                        maxHeight: 800.0,
                                                      ),
                                                      child: Text(
                                                          widget.bookSummary,
                                                          style: TextStyle(
                                                              fontFamily:
                                                                  'Montserrat',
                                                              fontSize: 18.0,
                                                              color: Colors
                                                                  .black)),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      shape:
                                                          RoundedRectangleBorder(
                                                        borderRadius:
                                                            BorderRadius
                                                                .circular(20),
                                                      ),
                                                      primary:
                                                          Colors.deepPurple,
                                                      fixedSize:
                                                          const Size.fromWidth(
                                                              100),
                                                      padding:
                                                          const EdgeInsets.all(
                                                              10),
                                                    ),
                                                    onPressed: () {
                                                      Navigator.push(
                                                          context,
                                                          MaterialPageRoute(
                                                              builder: (context) =>
                                                                  (AllBooksScreen())));
                                                    },
                                                    child: const Text(
                                                      "Find book",
                                                      style: TextStyle(
                                                          color: Colors.white),
                                                    ),
                                                  ),
                                                ])
                                              ])
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  )),
                              Expanded(
                                child: Container(),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    //      Icon(Icons.star),
                                    //          Text("Bottom Text")
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            )
          ],
        ));
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
