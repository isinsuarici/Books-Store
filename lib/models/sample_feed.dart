class Feed {
  String bookId;
  String profileImage;
  String timeStamp;
  String comment;

  Feed({
    required this.bookId,
    required this.profileImage,
    required this.timeStamp,
    required this.comment
  });

  factory Feed.fromJson(Map<String, dynamic> json) {
    return Feed(
        bookId : json['bookId']?? '',
        profileImage : json['profileImage']?? '',
        timeStamp : json['timeStamp']?? '',
        comment : json['comment']?? '',
    );
  }
}