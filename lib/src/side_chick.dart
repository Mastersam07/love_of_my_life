import 'package:love_of_my_life/love_of_my_life.dart';

class SideChick extends Partner {
  SideChick({
    PartnerQuality mainQuality = PartnerQuality.physicalAssets,
    required RelationshipPhase initialPhase,
  })  : assert(
          initialPhase == RelationshipPhase.friends ||
              initialPhase == RelationshipPhase.talkingStage,
          'Cannot start a side chick from $initialPhase',
        ),
        super(
          mainQuality: mainQuality,
          mainLoveLanguage: LoveLanguage.gifting,
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
}
