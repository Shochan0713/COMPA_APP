import 'package:flutter/material.dart';

class CommonDropButton<T> extends StatefulWidget {
  final T initialValue;
  final ValueChanged<T> onChanged;
  final Map<T, String> items;

  const CommonDropButton({
    Key? key,
    required this.initialValue,
    required this.onChanged,
    required this.items,
  }) : super(key: key);

  @override
  State<CommonDropButton<T>> createState() => _CommonDropButtonState<T>();
}

class _CommonDropButtonState<T> extends State<CommonDropButton<T>> {
  late T selectedValue;

  @override
  void initState() {
    super.initState();
    selectedValue = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: selectedValue,
      items: widget.items.keys.map((value) {
        return DropdownMenuItem(
          value: value,
          child: Text(widget.items[value]!),
        );
      }).toList(),
      onChanged: (T? value) {
        if (value != null) {
          setState(() {
            selectedValue = value;
            widget.onChanged(value);
          });
        }
      },
    );
  }
}
