/// Solution is create 2 separate interface that work on specific class

abstract class IAdsActions {

  void playRandomAd();
}

abstract class IVideoActions {

  double getNumberOfHoursPlayed();

}



class PremiumVideo implements IVideoActions{
  
  late int time;
  late int views;
  
  @override
  double getNumberOfHoursPlayed() {
    return (time / 3600.0) * views;
  }
}

class Video implements IVideoActions, IAdsActions{
  
  late final String title;
  late final int time;
  late final int likes;
  late final int views;
  late final Category category;
  
  @override
  double getNumberOfHoursPlayed() {
    return (time / 3600.0) * views;
  }

  @override
  void playRandomAd() {
    throw Exception("Play an ad");
  }
  
}

enum Category {
  GAMING, EDUCATIONAL, ENTERTAINMENT 
}