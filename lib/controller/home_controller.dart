import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/state_manager.dart';

class HomeController extends GetxController {
  RxBool isGrid = RxBool(false);

  void changeType() {
    isGrid.value = !isGrid.value;
    update();
  }
}
