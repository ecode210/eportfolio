import 'package:get/instance_manager.dart';
import 'package:portfolio_update/controller/portfolio_controller.dart';

class PortfolioBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => PortfolioController(), fenix: true);
  }
}
