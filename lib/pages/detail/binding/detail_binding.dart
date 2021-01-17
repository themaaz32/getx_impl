import 'package:get/get.dart';
import 'package:getx_impl/pages/detail/controller/detail_controller.dart';

class DetailBinding extends Bindings{
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.put(DetailController());
  }

}