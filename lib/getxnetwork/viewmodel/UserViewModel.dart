import 'package:flutterjourney/getxnetwork/model/EmployeeModel.dart';
import 'package:flutterjourney/getxnetwork/repository/UserRepository.dart';
import 'package:get/get.dart';

class UserViewModel extends GetxController{

  var isLoading = true.obs;
  var userList = <Employee>[].obs;

   @override
  void onInit() {
    fetchUser();
    super.onInit();
  }
  
   void fetchUser() async {

    var data = await UserRepository().fetchUser();
    if(data!.isNotEmpty){
      userList.clear();
      isLoading(false);
      userList.addAll(data);
    }
  }
}