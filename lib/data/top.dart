

import 'package:finance_app/data/1.dart';

List<Money> geterTop() {
  Money snapFood = Money();
  snapFood.time = 'jan 30,2022';
  snapFood.image = 'food.png';
  snapFood.buy = true;
  snapFood.fee = '- \$ 100';
  snapFood.name = 'macdonald';
  Money snap = Money();
  snap.image = 'Education.png';
  snap.time = 'today';
  snap.buy = true;
  snap.name = 'Transfer';
  snap.fee = '- \$ 60';

  return [snapFood, snap];
}