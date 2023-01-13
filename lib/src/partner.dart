import 'package:flutter/foundation.dart';
import 'package:love_of_my_life/src/breakfast.dart';

import '../love_of_my_life.dart';

abstract class Partner {
  final LoveLanguage mainLoveLanguage;
  final PartnerQuality mainQuality;

  Partner({
    required this.mainQuality,
    required this.mainLoveLanguage,
    required RelationshipPhase initialPhase,
  }) : _phase = initialPhase;

  Breakfast? _breakfast;

  Breakfast? get breakfast => _breakfast;

  set breakfast(Breakfast? breakfast) {
    _breakfast = breakfast;
  }

  double _relationshipMeter = 0;

  RelationshipPhase _phase;

  bool get eDonCast => breakfast != null;

  double get relationshipMeter => _relationshipMeter;

  RelationshipPhase get currentPhase => _phase;

  void spendQualityTime(
    Duration amountOfTime,
    bool isOutdoors,
  );

  void giveOrReceiveGifts(double costOfGift, double thoughtfulness);

  void touchPhysically(double degree, double intensity);

  void sayWordsOfAffirmation();

  void performActsOfService();

  @mustCallSuper
  void grow(RelationshipPhase phase) {
    _phase = phase;
  }

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
    return breakfast!;
  }
}
