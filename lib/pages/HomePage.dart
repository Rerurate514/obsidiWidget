import 'package:flutter/material.dart';
import 'package:obsididget/components/filePicker.dart';
import 'package:obsididget/widgets/StandardSpace.dart';
import 'package:obsididget/widgets/pageWrapper.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageWrapper(
        child: Center(
          child: Column(
            children: [
              const StandardSpace(),
              buildFormatField(),
              const StandardSpace(),
              FilePickerCom()
            ],
          ),
        )
      )
    );
  }
  
  Widget buildFormatField(){
    return const Column(
      children: [
        Text("デイリーノートのファイル名のフォーマットを記述\n(yyyymmddなどで記述)"),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 32),
          child: TextField(),
        )
      ],
    );
  }

  Widget buildFilePickerBtn(){
    return Container();
  }
}
