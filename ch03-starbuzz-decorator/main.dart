import 'lib/beverage.dart';
import 'lib/dark-roast.dart';
import 'lib/espresso.dart';
import 'lib/house-blend.dart';
import 'lib/mocha.dart';
import 'lib/soy.dart';
import 'lib/whip.dart';

void main(List<String> args) {
  Beverage espresso = Espresso();
  print('${espresso.Description} \$${espresso.Cost}');

  Beverage doubleMochaWhipDarkRoast = DarkRoast();
  doubleMochaWhipDarkRoast = Mocha(doubleMochaWhipDarkRoast);
  doubleMochaWhipDarkRoast = Mocha(doubleMochaWhipDarkRoast);
  doubleMochaWhipDarkRoast = Whip(doubleMochaWhipDarkRoast);
  print(
      '${doubleMochaWhipDarkRoast.Description} \$${doubleMochaWhipDarkRoast.Cost}');

  Beverage soyMochaWhipHouseBlend = HouseBlend();
  soyMochaWhipHouseBlend = Soy(soyMochaWhipHouseBlend);
  soyMochaWhipHouseBlend = Mocha(soyMochaWhipHouseBlend);
  soyMochaWhipHouseBlend = Whip(soyMochaWhipHouseBlend);
  print(
      '${soyMochaWhipHouseBlend.Description} \$${soyMochaWhipHouseBlend.Cost}');
}
