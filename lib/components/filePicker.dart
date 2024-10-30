import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:obsididget/logic/filePickermanager.dart';
import 'package:obsididget/widgets/InkCard.dart';

class FilePickerCom extends StatefulWidget {
  const FilePickerCom({super.key});

  @override
  State<FilePickerCom> createState() => _FilePickerComState();
}

class _FilePickerComState extends State<FilePickerCom> {
  final _fpmgr  = FilePickerManager();
  String _fileInfo = "";

  void changeFileNameText() async {
    FilePickerResult? result = await _fpmgr.pickFile();
    if(result == null) return;

    String filePath = (result.paths).cast<String>().join("");
    String fileName = (result.names).cast<String>().join("");
    String dirName = filePath.replaceAll(fileName, "");

    setState(() {
      _fileInfo = dirName;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkCard(
          padding: 16,
          onTap: () {
            changeFileNameText();
          },
          child: Text("デイリーノートを選択する。")
        ),
        Text("デイリーノートを選択することで、格納されているディレクトリを認識します。"),
        Text("確認されたディレクトリ：$_fileInfo")
      ],
    );
  }
}
