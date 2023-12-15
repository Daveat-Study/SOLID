class EarningCalculator {

  double calculateEarnings(Video video){

    switch (video.getCategory()){
      case Category.EDUCATIONAL: return calculateEducationalEarnings(video);
      case Category.GAMING: return calculateGamingEarnings(video);
      case Category.ENTERTAINMENT: return calculateEntertainmentEarnings(video);
    }
    
  }

  double calculateEducationalEarnings(Video video){
    return video.getLikes() * 0.013 + video.getViews() * 0.0013;
  }

  double calculateGamingEarnings(Video video){
    return video.getLikes() * 0.012 + video.getViews() * 0.0012;
  }

  double calculateEntertainmentEarnings(Video video){
    return video.getLikes() * 0.011 + video.getViews() * 0.0011;
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
  
}

enum Category {
  GAMING, EDUCATIONAL, ENTERTAINMENT 
}