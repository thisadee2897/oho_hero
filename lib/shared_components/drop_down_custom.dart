import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomCupertinoDropdown extends StatefulWidget {
  @override
  _CustomCupertinoDropdownState createState() => _CustomCupertinoDropdownState();
}

class _CustomCupertinoDropdownState extends State<CustomCupertinoDropdown> {
  String _selectedOption = 'Select an option';
  final List<String> _options = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];

  void _showPicker() {
    showCupertinoModalPopup(
      context: context,
      builder: (_) => Container(
        height: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(16),
              child: Text(
                'Choose an Option',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(height: 1, color: Colors.grey),
            Expanded(
              child: CupertinoPicker(
                backgroundColor: Colors.white,
                itemExtent: 40,
                onSelectedItemChanged: (index) {
                  setState(() {
                    _selectedOption = _options[index];
                  });
                },
                children: _options.map((option) => Center(child: Text(option))).toList(),
              ),
            ),
            CupertinoButton(
              child: Text('Confirm'),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text('Custom Dropdown'),
      ),
      child: Center(
        child: GestureDetector(
          onTap: _showPicker,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            decoration: BoxDecoration(
              color: CupertinoColors.systemGrey5,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: CupertinoColors.systemGrey4, width: 1),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  _selectedOption,
                  style: TextStyle(fontSize: 16, color: CupertinoColors.black),
                ),
                SizedBox(width: 8),
                Icon(
                  CupertinoIcons.chevron_down,
                  color: CupertinoColors.systemGrey,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}