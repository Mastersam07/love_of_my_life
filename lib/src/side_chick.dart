import 'package:love_of_my_life/src/enums.dart';

import '../love_of_my_life.dart';
import 'relationship.dart';

abstract class SideChick extends Partner {
  SideChick(RelationshipPhase initialPhase)
      : assert(
          initialPhase == RelationshipPhase.friends ||
              initialPhase == RelationshipPhase.talkingStage,
          'Cannot start a side chick from $initialPhase',
        ),
        super(LoveLanguage.gifting, initialPhase);

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
