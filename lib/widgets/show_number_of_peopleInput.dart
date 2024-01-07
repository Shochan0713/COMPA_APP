// ignore_for_file: prefer_const_constructors_in_immutables, file_names

import 'package:flutter/material.dart';

class NameInputForm extends StatefulWidget {
  final Function(List<String> names) onNamesChanged;

  NameInputForm({super.key, required this.onNamesChanged});

  @override
  // ignore: library_private_types_in_public_api
  _NameInputFormState createState() => _NameInputFormState();
}

class _NameInputFormState extends State<NameInputForm> {
  bool isSinglePerson = true;
  int numberOfPeople = 1;
  List<NameInputField> nameInputFields = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        RadioListTile(
          title: const Text('一人'),
          value: true,
          groupValue: isSinglePerson,
          onChanged: (value) {
            setState(() {
              isSinglePerson = value!;
            });
          },
        ),
        RadioListTile(
          title: const Text('複数人'),
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

  void showNumberOfPeopleInput() async {
    int? result = await showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('複数人の人数を入力してください'),
          content: TextField(
            keyboardType: TextInputType.number,
            onChanged: (value) {
              setState(() {
                numberOfPeople = int.tryParse(value) ?? 0;
              });
            },
          ),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(context).pop(numberOfPeople);
              },
              child: const Text('OK'),
            ),
          ],
        );
      },
    );

    if (result != null) {
      generateNameInputFields();
    }
  }

  void generateNameInputFields() {
    nameInputFields.clear();
    for (int i = 0; i < numberOfPeople; i++) {
      nameInputFields.add(
        NameInputField(
          onNameChanged: (name) {
            widget.onNamesChanged(
                nameInputFields.map((field) => field.controller.text).toList());
          },
        ),
      );
    }
    setState(() {});
  }
}

class NameInputField extends StatelessWidget {
  final Function(String) onNameChanged;
  final TextEditingController controller = TextEditingController();

  NameInputField({super.key, required this.onNameChanged});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: const InputDecoration(labelText: '名前'),
      onChanged: (name) {
        onNameChanged(name);
      },
    );
  }
}
