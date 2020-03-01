import './award_level.dart';

class AwardCateogry {
  final Awards teamwork;
  final Awards empowerment;
  final Awards leadership;
  final Awards empathy;
  final Awards confidence;
  final Awards socialResponsibility;
  final Awards inclusion;
  
  List<String> stringAward = [
    "teamwork",
    "empowerment"
    "leadership",
    "empathy",
    "confidence",
    "socialResponsibility",
    "inclusion",
  ];

  AwardCateogry(
      {this.confidence,
      this.empathy,
      this.empowerment,
      this.inclusion,
      this.leadership,
      this.socialResponsibility,
      this.teamwork,
      });
}
