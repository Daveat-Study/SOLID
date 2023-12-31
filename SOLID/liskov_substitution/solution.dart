import 'video_interface.dart';

/// Solution is we create "VideoManager" class

class PremiumVideo implements IVideo{

  late int premiumId;
  late VideoManager manager;
  
  @override
  double getNumberOfHoursPlayed() {
    return manager.getNumberOfHoursPlayed();
  }

}

class Video implements IVideo{

  late VideoManager manager;

  @override
  double getNumberOfHoursPlayed() {
    return manager.getNumberOfHoursPlayed();
  }

  void playRandomAd(){
    manager.playRandomAd();
  }
  
}

class VideoManager {
  
  late final String title;
  late final int time;
  late final int likes;
  late final int views;
  
  double getNumberOfHoursPlayed() {
    return (time / 3600.0) * views;
  }

  int getLikes(){
    return this.likes;
  }

  int getViews() => this.views;

  void playRandomAd() {
    throw Exception("Play an ad");
  }
  
}