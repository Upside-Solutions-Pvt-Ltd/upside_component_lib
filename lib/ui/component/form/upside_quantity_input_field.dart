import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class UpsideQuantityInputField extends StatefulWidget {
  final int value;
  final Function(int) onChanged;
  final int minValue;

  const UpsideQuantityInputField({
    super.key,
    required this.value,
    required this.onChanged,
    this.minValue = 1,
  });

  @override
  State<StatefulWidget> createState() {
    return _UpsideQuantityInputFieldState();
  }
}

class _UpsideQuantityInputFieldState extends State<UpsideQuantityInputField> {
  late int _currentValue;
  late TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    _currentValue = widget.value;
    _controller = TextEditingController(text: _currentValue.toString());
  }

  @override
  void didUpdateWidget(UpsideQuantityInputField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.value != oldWidget.value && widget.value != _currentValue) {
      setState(() {
        _currentValue = widget.value;
        _controller.text = _currentValue.toString();
        // Ensure cursor is at the end of the text
        _controller.selection =
            TextSelection.fromPosition(TextPosition(offset: _controller.text.length));
      });
    }
  }

  void _updateValue(int newValue) {
    if (newValue < widget.minValue) {
      newValue = widget.minValue;
    }

    if (_currentValue != newValue) {
      setState(() {
        _currentValue = newValue;
      });
      _controller.text = _currentValue.toString();
      widget.onChanged(_currentValue);
    }
  }

  void _increment() {
    _updateValue(_currentValue + 1);
  }

  void _decrement() {
    if (_currentValue > widget.minValue) {
      _updateValue(_currentValue - 1);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
        IconButton(
          icon: const Icon(Icons.remove),
          onPressed: _decrement,
        ),
        SizedBox(
          width: 50,
          child: TextFormField(
            controller: _controller,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            onChanged: (value) {
              final int? intValue = int.tryParse(value);
              if (intValue != null && _currentValue != intValue) {
                // We don't call _updateValue here to avoid recursion
                // and allow the user to type freely.
                // The final value is updated onFocusChange or via buttons.
                 setState(() {
                  _currentValue = intValue;
                });
                widget.onChanged(intValue);
              }
            },
            decoration: const InputDecoration(
              border: OutlineInputBorder(borderSide: BorderSide.none),
              contentPadding: EdgeInsets.all(4),
            ),
          ),
        ),
        IconButton(
          icon: const Icon(Icons.add),
          onPressed: _increment,
        ),
      ],
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
