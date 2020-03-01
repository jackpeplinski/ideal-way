import './award_cateogry.dart';

enum Complexity{
  Easy,
  Medium,
  Hard,
}

class User{

  final Complexity complexity;
  final AwardCateogry award;

  User({this.complexity,this.award});
  
}