import 'package:file_picker/file_picker.dart';

class FilePickerManager{
  Future<FilePickerResult?> pickFile() async {
    FilePickerResult? result = await FilePicker.platform.pickFiles();
    return result;
  }
}
