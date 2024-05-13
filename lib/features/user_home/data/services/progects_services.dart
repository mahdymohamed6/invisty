import 'dart:convert';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

import 'package:investify/features/user_home/data/models/progect_model.dart';

class ProjectsServices2 {
  Future<List<ProgectModel>> getAllProjects() async {
    String url = 'https://investpulse.onrender.com/projects/';
    String token = GetStorage().read('token');
    final response = await http.get(
      Uri.parse(url),
      headers: {
        'Content-Type': 'multipart/form-data',
        'Authorization': 'Bearer $token'
      },
    );
    List<ProgectModel> projectsList = [];

    if (response.statusCode == 200) {
      Map<String, dynamic> jsonData = jsonDecode(response.body);
      List<dynamic> projects = jsonData['projects'];
      for (var project in projects) {
        ProgectModel projectModel = ProgectModel.fromJson(project);
        projectsList.add(projectModel);
      }
      print(projectsList);
    } else {
      print(response.statusCode);
    }
    return projectsList;
  }
}

// ProgectModel class and its factory methods remain the same