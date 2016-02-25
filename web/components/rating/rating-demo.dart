import "package:angular2/angular2.dart";
import "package:ng2_strap/rating/rating.dart";

@Component(selector: "rating-demo")
@View(
    templateUrl: "rating-demo.html",
    directives: const [Rating])
class RatingDemo {
  num x = 5;
  num y = 2;
  num max = 10;
  num rate = 7;
  bool isReadonly = false;
  num overStar;
  num percent = 0;
  var ratingStates = [
    {"stateOn": "glyphicon-ok-sign", "stateOff": "glyphicon-ok-circle"},
    {"stateOn": "glyphicon-star", "stateOff": "glyphicon-star-empty"},
    {"stateOn": "glyphicon-heart", "stateOff": "glyphicon-ban-circle"},
    {"stateOn": "glyphicon-heart"},
    {"stateOff": "glyphicon-off"}
  ];
  void hoveringOver(num value) {
    overStar = value;
    percent = 100 * (value / this.max);
  }

  resetStar() {
    overStar = null;
  }
}
