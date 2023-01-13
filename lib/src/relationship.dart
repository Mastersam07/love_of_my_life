import 'package:flutter/material.dart';

import 'enums.dart';

abstract class Relationship {
  final LoveLanguage mainLoveLanguage;

  Relationship(this.mainLoveLanguage, RelationshipPhase initialPhase)
      : _phase = initialPhase;

  bool _hasBreakfast = false;
  double _relationshipMeter = 0;
  RelationshipPhase _phase;

  bool get eDonCast => _hasBreakfast;
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
  void chopBreakfast() {
    _hasBreakfast = true;
  }
}
