import 'package:flutter/foundation.dart';
import 'package:love_of_my_life/love_of_my_life.dart';

abstract class Partner {
  final LoveLanguage mainLoveLanguage;
  final PartnerQuality mainQuality;

  Partner({
    required this.mainQuality,
    required this.mainLoveLanguage,
  });

  Breakfast? _breakfast;

  Breakfast? get breakfast => _breakfast;

  set breakfast(Breakfast? breakfast) {
    _breakfast = breakfast;
  }

  double _relationshipMeter = 0;

  bool get eDonCast => breakfast != null;

  double get relationshipMeter => _relationshipMeter;

  void spendQualityTime(
    Duration amountOfTime,
    bool isOutdoors,
  );

  void giveOrReceiveGifts(double costOfGift, double thoughtfulness);

  void touchPhysically(double degree, double intensity);

  void sayWordsOfAffirmation();

  void performActsOfService();

  @mustCallSuper
  void chopBreakfast(Breakfast breakfast) {
    breakfast = breakfast.copyWith(
      status: BreakfastStatus.accepted,
    );
  }

  @mustCallSuper
  Breakfast serveBreakfast() {
    assert(
      breakfast != null,
      'you can\'t server a null breakfast nauu 😏abi you dey fear nhii',
    );
    breakfast = breakfast!.copyWith(status: BreakfastStatus.served);
    return breakfast!;
  }
}
