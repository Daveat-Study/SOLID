import 'interface.dart';
import 'problem.dart';

class EducationalEarningCalculator implements IEarningCalculator {

  @override
  double calculateEarnings(Video video){
    return video.getLikes() * 0.013 + video.getViews() * 0.0013;
  }
}

class GamingEarningCalculator implements IEarningCalculator {

  @override
  double calculateEarnings(Video video){
    return video.getLikes() * 0.012 + video.getViews() * 0.0012;
  }

}

class EntertainmentEarningCalculator implements IEarningCalculator {

  @override
  double calculateEarnings(Video video){
    return video.getLikes() * 0.011 + video.getViews() * 0.0011;
  }

}