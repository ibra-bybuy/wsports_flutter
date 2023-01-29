import 'dart:io';

import 'package:image_picker/image_picker.dart';

class PickImage {
  final ImagePicker _picker = ImagePicker();

  Future<File?> call({
    bool fromGallery = true,
  }) async {
    final XFile? image = await _picker.pickImage(
      source: fromGallery ? ImageSource.gallery : ImageSource.camera,
      maxHeight: 150,
      maxWidth: 150,
    );

    if (image != null) {
      return File(image.path);
    }

    return null;
  }
}
