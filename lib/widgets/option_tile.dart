import 'package:flutter/material.dart';

class OptionTile extends StatelessWidget {
  final String text;
  final int index;
  final bool isSelected;
  final VoidCallback onTap;

  const OptionTile({
    super.key,
    required this.text,
    required this.index,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final w = MediaQuery.of(context).size.width;
    return InkWell(// untuk pinggir opsi
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Container(
        padding: EdgeInsets.symmetric(vertical: w * 0.03, horizontal: w * 0.04),
        decoration: BoxDecoration(
          color: isSelected ? Theme.of(context).primaryColor.withOpacity(0.12) : Colors.transparent,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(color: isSelected ? Theme.of(context).primaryColor : Colors.grey.shade300),
        ),
        child: Row(
          children: [
            CircleAvatar(//untuk nomor opsi
              radius: w * 0.04,
              backgroundColor: isSelected ? Theme.of(context).primaryColor : Colors.transparent,
              child: Text('${index + 1}', style: TextStyle(color: isSelected ? Colors.white : Colors.black)),
            ),
            const SizedBox(width: 12),
            Expanded(child: Text(text)),
          ],
        ),
      ),
    );
  }
}
