class ApiConst {
  static const String apiKey = "3548d4bfaff946688fc6cb2fdee369d0";
  static const String topNews =
      "https://newsapi.org/v2/top-headlines?country=tr&apiKey=$apiKey";
  static String searchNews(String? title) =>
      'https://newsapi.org/v2/everything?q=${title ?? 'flutter'}&apiKey=$apiKey';
  static const String image =
      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN7c9YNU8-BL7li7aelS0ij4SzIY27-U0tvQ&usqp=CAU";
}
