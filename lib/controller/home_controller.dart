import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  RxBool isGrid = RxBool(false);

  void changeType() {
    isGrid.value = !isGrid.value;
    update();
  }
}
