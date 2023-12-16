abstract class IVideoActions {

  double getNumberOfHoursPlayed();
  
  void playRandomAd();

}

class PremiumVideo extends Video {

  late int _premiumId;

  double getNumberOfHoursPlayed() {
    return (time / 3600.0) * views;
  }
}

class Video {
  
  late final String title;
  late final int time;
  late final int likes;
  late final int views;
  late final Category category;
  
  double getNumberOfHoursPlayed() {
    return (time / 3600.0) * views;
  }

  void playRandomAd() {
    throw Exception("Play an ad");
  }
  
}

enum Category {
  GAMING, EDUCATIONAL, ENTERTAINMENT 
}