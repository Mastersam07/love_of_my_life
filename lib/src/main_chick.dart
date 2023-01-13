import 'package:love_of_my_life/love_of_my_life.dart';

class MainChick extends Partner {
  MainChick({
    PartnerQuality mainQuality = PartnerQuality.both,
    required LoveLanguage mainLoveLanguage,
    required RelationshipPhase initialPhase,
  }) : super(
          mainQuality: mainQuality,
          mainLoveLanguage: mainLoveLanguage,
        );

  @override
  void giveOrReceiveGifts(double costOfGift, double thoughtfulness) {
    // TODO: implement giveOrReceiveGifts
  }

  @override
  void performActsOfService() {
    // TODO: implement performActsOfService
  }

  @override
  void sayWordsOfAffirmation() {
    // TODO: implement sayWordsOfAffirmation
  }

  @override
  void spendQualityTime(Duration amountOfTime, bool isOutdoors) {
    // TODO: implement spendQualityTime
  }

  @override
  void touchPhysically(double degree, double intensity) {
    // TODO: implement touchPhysically
  }

  @override
  String toString() {
    return 'MainChick{'
        '   $mainQuality'
        '   $mainLoveLanguage'
        '}';
  }
}
