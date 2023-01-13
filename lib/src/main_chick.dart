import 'package:love_of_my_life/love_of_my_life.dart';
import 'package:love_of_my_life/src/enums.dart';

import 'relationship.dart';

abstract class MainChick extends Partner {
  MainChick(LoveLanguage mainLoveLanguage, RelationshipPhase initialPhase)
      : super(
          mainLoveLanguage,
          initialPhase,
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
