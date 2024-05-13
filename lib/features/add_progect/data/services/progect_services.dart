// import 'dart:io';
// import 'package:get_storage/get_storage.dart';
// import 'package:http/http.dart' as http;

// class ProjectServices {
//   Future<void> addProject({
//     required String title,
//     required String description,
//     required int price,
//     required File image,
//     required File video,
//   }) async {
//     String token = GetStorage().read('token');
//     String url = 'https://investpulse.onrender.com/projects/';

//     // Create a multipart request
//     var request = http.MultipartRequest('POST', Uri.parse(url));
//     request.headers['Authorization'] = 'Bearer $token';
//     request.headers['Content-Type'] = 'multipart/form-data';

//     // Add the image and video files
//     var imageFile = await http.MultipartFile.fromPath('image', image.path);
//     var videoFile = await http.MultipartFile.fromPath('video', video.path);
//     print(imageFile);
//     request.files.add(imageFile);
//     request.files.add(videoFile);

//     // Add the other fields
//     request.fields['title'] = title;
//     request.fields['description'] = description;
//     request.fields['price'] = price.toString();

//     try {
//       var response = await request.send();
//       if (response.statusCode == 200) {
//         String responseBody = await response.stream.bytesToString();

//         print('Project created successfully');
//         print(responseBody);
//       } else {
//         print('Failed to create project. Status code: ${response.statusCode}');
//         String responseBody = await response.stream.bytesToString();
//         print('Response body: $responseBody');
//       }
//     } catch (e) {
//       print('Error sending request: $e');
//     }
//   }
// }
// }
import 'dart:io';
import 'package:get_storage/get_storage.dart';
import 'package:http/http.dart' as http;

class ProjectServices {
  Future<void> addProject({
    required String title,
    required String description,
    required int price,
    required File image,
    required File video,
  }) async {
    String token = GetStorage().read('token');
    String url = 'https://investpulse.onrender.com/projects/';

    // Create a multipart request
    var request = http.MultipartRequest('POST', Uri.parse(url));
    request.headers['Authorization'] = 'Bearer $token';

    // Add the image and video files
    var imageLength = await image.length();
    var videoLength = await video.length();
    // final imageData = lookupMimeType(image.path);
    // final videoData = lookupMimeType(video.path);
    // Verify the file sizes
    if (imageLength == 0 || videoLength == 0) {
      print('Image or video file is empty.');
      return;
    }

    var imageFile = await http.MultipartFile.fromPath(
      'image',
      image.path,
    );
    var videoFile = await http.MultipartFile.fromPath(
      'video',
      video.path,
    );
    print('Image file: ${image.path}');
    print('Image file: ${imageFile.filename}');
    print('Video file: ${video.path}');
    request.files.add(imageFile);
    request.files.add(videoFile);

    // Add the other fields
    request.fields['title'] = title;
    request.fields['description'] = description;
    request.fields['price'] = price.toString();

    try {
      var response = await request.send();
      if (response.statusCode == 200) {
        String responseBody = await response.stream.bytesToString();

        print('Project created successfully');
        print(responseBody);
      } else {
        print('Failed to create project. Status code: ${response.statusCode}');
        String responseBody = await response.stream.bytesToString();
        print('Response body: $responseBody');
      }
    } catch (e) {
      print('Error sending request: $e');
    }
  }
}
