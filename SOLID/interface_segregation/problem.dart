/// In this context. we want to demonstrate Premium Video without Ads
/// So we need to override
/// 
/// It is bad practice

class PremiumVideo extends Video {

  late int _premiumId;

  void playRandomAd() {
    throw Exception("No Ads play during Premium videos");
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

  Category getCategory(){
    return this.category;
  }

  int getLikes(){
    return this.likes;
  }

  int getViews() => this.views;

  void playRandomAd() {
    throw Exception("Play an ad");
  }
  
}

enum Category {
  GAMING, EDUCATIONAL, ENTERTAINMENT 
}