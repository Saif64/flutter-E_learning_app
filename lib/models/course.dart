class Course {
  String author;
  String authorImg;
  String title;
  String imageUrl;

  Course(this.author, this.authorImg, this.title, this.imageUrl);

  static List<Course> generateCourses() {
    return [
      Course('Lama Lanai', 'assets/icons/avatar01.png', 'Flutter',
          'assets/images/flutter_cover.png'),
      Course('Daniel Dia', 'assets/icons/avatar02.png', 'Android',
          'assets/images/android_cover.png'),
      Course('Muntasir Mahmud', 'assets/icons/author.jpg', 'IOS BootCamp',
          'assets/images/ios_cover.png'),
      Course('Lama Lanai', 'assets/icons/avatar01.png', 'Flutter',
          'assets/images/flutter_cover.png'),
      Course('Muntasir Mahmud', 'assets/icons/author.jpg', 'IOS BootCamp',
          'assets/images/ios_cover.png'),
      Course('Daniel Dia', 'assets/icons/avatar02.png', 'Android',
          'assets/images/android_cover.png'),
    ];
  }
}
