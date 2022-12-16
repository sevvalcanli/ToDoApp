import 'package:get/get.dart';
import 'package:todoapp1/controllers/authController.dart';
import 'package:todoapp1/controllers/bindings/authBinding.dart';
import 'package:todoapp1/models/todo.dart';
import 'package:todoapp1/services/database.dart';

class TodoController extends GetxController {
  Rx<List<TodoModel>> todoList = Rx<List<TodoModel>>();

  List<TodoModel> get todos => todoList.value;

  @override
  void onInit() {
    String uid = Get.find<AuthController>().user.uid;
    todoList
        .bindStream(Database().todoStream(uid)); //stream coming from firebase
  }
}
