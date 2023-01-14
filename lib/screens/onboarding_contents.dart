class OnboardingContents {
  final String title;
  final String image;
  final String desc;

  OnboardingContents({
    required this.title,
    required this.image,
    required this.desc,
  });
}

List<OnboardingContents> contents = [
  OnboardingContents(
      image: 'assets/image-removebg-preview.png',
      title: "Find the books you've\n been looking for",
      desc: "Here you'll see rich varieties of books"),
  OnboardingContents(
      image: 'assets/priceIcon.png',
      title: "FIND BEST PRICE",
      desc: "Find the cheapest book"),
  OnboardingContents(
      image: 'assets/search.jpg',
      title: "SEARCH",
      desc: "Discover books by type of book.  "),
];