import 'package:flutter/material.dart';

class NameInputForm extends StatefulWidget {
  @override
  _NameInputFormState createState() => _NameInputFormState();
}

class _NameInputFormState extends State<NameInputForm> {
  bool isSinglePerson = true; // ラジオボタンで制御する、一人か複数人かのフラグ
  int numberOfPeople = 1; // 複数人の場合の人数

  List<Widget> nameInputFields = [NameInputField()]; // テキストボックスを保持するリスト

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: Text('一人'),
          value: true,
          groupValue: isSinglePerson,
          onChanged: (value) {
            setState(() {
              isSinglePerson = value!;
            });
          },
        ),
        RadioListTile(
          title: Text('複数人'),
          value: false,
          groupValue: isSinglePerson,
          onChanged: (value) {
            setState(() {
              isSinglePerson = value!;
              // 複数人の場合、人数を入力するテキストボックスを表示
              showNumberOfPeopleInput();
            });
          },
        ),
        ...nameInputFields, // 名前入力テキストボックスを表示
      ],
    );
  }

  void showNumberOfPeopleInput() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('複数人の人数を入力してください'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                numberOfPeople = int.tryParse(value) ?? 0;
                // 入力された人数に応じてテキストボックスを生成
                generateNameInputFields();
              });
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text('OK'),
            ),
          ],
        );
      },
    );
  }

  void generateNameInputFields() {
    nameInputFields.clear();
    for (int i = 0; i < numberOfPeople; i++) {
      nameInputFields.add(NameInputField());
    }
    setState(() {});
  }
}

class NameInputField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(labelText: '名前'),
    );
  }
}
