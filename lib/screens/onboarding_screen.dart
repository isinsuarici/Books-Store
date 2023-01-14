import 'package:flutter/material.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  late PageController _pageController;
  int _pageIndex=0;
  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demoData.length,
                  controller: _pageController,
                  onPageChanged: (index){
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => OnboardContent(
                    image: demoData[index].image,
                    title: demoData[index].title,
                    description: demoData[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                      demoData.length,
                          (index) => Padding(
                        padding: const EdgeInsets.only(right: 4),
                        child: DotIndicator(
                            isActive: index== _pageIndex
                        ),
                      )),
                  const Spacer(),
                  SizedBox(
                    height: 60,
                    width: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },

                      style: ElevatedButton.styleFrom(shape: const CircleBorder(),backgroundColor: Colors.deepPurple),
                      child:  Icon(
                         isLast(_pageIndex)? Icons.arrow_right_alt_sharp:Icons.arrow_right_alt_rounded,
                         color: isLast(_pageIndex)? Colors.white:Colors.black,
                      ),
                    ),
                  ),
                ],
              )
            ]),
          )),
    );
  }
  bool isLast(int index){
    if(index==2)
      return true;
    else return false;
  }
}

class Onboard {
  final String image, title, description;
  Onboard(
      {required this.image, required this.title, required this.description});
}

final List<Onboard> demoData = [
  Onboard(
      image: 'assets/image-removebg-preview.png',
      title: "Find the books you've\n been looking for",
      description: "Here you'll see rich varieties of books"),
  Onboard(
      image: 'assets/priceIcon.png',
      title: "Compare to prices",
      description: "Find the cheapest book"),
  Onboard(
      image: 'assets/search.jpg',
      title: "SEARCH",
      description: "Discover books by type of book.  "),
];

class OnboardContent extends StatelessWidget {
  const OnboardContent(
      {Key? key,
        required this.image,
        required this.title,
        required this.description})
      : super(key: key);
  final String image, title, description;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const Spacer(),
              Image.asset(
                image,
                height: 250,
              ),
              const Spacer(),
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w500),
              ),
              const SizedBox(height: 16),
              Text(
                description,
                textAlign: TextAlign.center,
              ),
              const Spacer(),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    Key? key,
    this.isActive = false,
  }) : super(key: key);

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height:isActive ? 18 :10,
      width: 6,
      decoration:  BoxDecoration(
          color: isActive?Colors.deepPurpleAccent:Colors.deepPurpleAccent.withOpacity(0.4),
          borderRadius:const BorderRadius.all(Radius.circular(12))),
    );
  }
}
