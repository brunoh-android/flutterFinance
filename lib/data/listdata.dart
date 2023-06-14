

import '1.dart';

List<Money> getter() {
  Money upwork = Money();
  upwork.name = 'Salario';
  upwork.fee = '1550';
  upwork.time = 'today';
  upwork.image = 'food.png';
  upwork.buy = false;

  Money starbucks = Money();
  starbucks.name = 'Lanche';
  starbucks.fee = '15';
  starbucks.time = 'today';
  starbucks.image = 'food.png';
  starbucks.buy = true;

  Money pix = Money();
  pix.name = 'Pix';
  pix.fee = '800';
  pix.time = 'today';
  pix.image = 'Transfer.png';
  pix.buy = true;

  return [upwork, starbucks, pix, upwork,pix,starbucks,starbucks];
}
