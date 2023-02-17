import 'package:get/get.dart';

class HomeScreenController extends GetxController{
final _selectedIndex=0.obs;
 int get selectedIndex=> _selectedIndex.value;

 void tabchangeIndex(int index){

  _selectedIndex.value =index;
  update();
 }

}