import 'package:flutter/material.dart';

class CommonRadioButton<T> extends StatefulWidget {
  final T selectedValue;
  final ValueChanged<T> onValueChanged;
  final List<T> items;
  final Widget Function(T) itemBuilder;

  const CommonRadioButton({
    Key? key,
    required this.selectedValue,
    required this.onValueChanged,
    required this.itemBuilder,
    required this.items,
  }) : super(key: key);

  @override
  State<CommonRadioButton<T>> createState() => _CommonRadioButtonState<T>();
}

class _CommonRadioButtonState<T> extends State<CommonRadioButton<T>> {
  late T selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.selectedValue;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: widget.items.map((value) {
        return Row(
          children: <Widget>[
            Radio<T>(
              value: value,
              groupValue: selectedValue,
              onChanged: (T? newValue) {
                if (newValue != null) {
                  setState(() {
                    selectedValue = newValue;
                    widget.onValueChanged(newValue);
                  });
                }
              },
            ),
            widget.itemBuilder(value),
          ],
        );
      }).toList(),
    );
  }
}
