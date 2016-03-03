import "package:angular2/angular2.dart";
import 'package:ng2_strap/dropdown/index.dart';
import 'dart:html';

@Component(selector: "dropdown-demo",
    templateUrl: 'dropdown-demo.html',
    directives: const [N2S_DROPDOWN_DIRECTIVES])
class DropdownDemo {
  bool disabled = false;
  Map status = {"isopen": false};
  List<String> items = [
    "The first choice!",
    "And another choice for you.",
    "but wait! A third!"
  ];
  void toggled(bool open) {
    print("Dropdown is now: $open");
  }

  void toggleDropdown(MouseEvent $event) {
    $event.preventDefault();
    $event.stopPropagation();
    status['isopen'] = !status['isopen'];
  }
}
