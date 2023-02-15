import 'package:get/get.dart';

class SellerController extends GetxController {
  final _fev = false.obs;
  bool get fev => _fev.value;

  onClickFunction() {
    _fev.value = !_fev.value;
  }
}
