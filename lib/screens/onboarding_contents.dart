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
      desc: "You can review the summaries of the books you are curious to read."),
  OnboardingContents(
      image: 'assets/istockphoto-1354173244-612x612-removebg-preview.png',
      title: "FIND BEST PRICE",
      desc: "You can compare the price of the book you want to buy from the bookstores in Eskişehir and find the most suitable one."),

];