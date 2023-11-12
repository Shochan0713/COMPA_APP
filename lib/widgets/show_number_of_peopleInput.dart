import 'package:flutter/material.dart';

class NameInputForm extends StatefulWidget {
  final Function(List<String> names) onNamesChanged;
  NameInputForm({required this.onNamesChanged});

  @override
  _NameInputFormState createState() => _NameInputFormState();
}

class _NameInputFormState extends State<NameInputForm> {
  bool isSinglePerson = true;
  int numberOfPeople = 1;

  List<NameInputField> nameInputFields = [
    NameInputField(
      onNameChanged: (String) {},
    )
  ];

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
              showNumberOfPeopleInput();
            });
          },
        ),
        ...nameInputFields,
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
      nameInputFields.add(NameInputField(
        onNameChanged: (name) {
          widget.onNamesChanged(
              nameInputFields.map((field) => field.controller.text).toList());
        },
      ));
    }
    setState(() {});
  }
}

class NameInputField extends StatelessWidget {
  final Function(String) onNameChanged;
  final TextEditingController controller = TextEditingController();

  NameInputField({required this.onNameChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(labelText: '名前'),
      onChanged: (name) {
        onNameChanged(name);
      },
    );
  }
}
