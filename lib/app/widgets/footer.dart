import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Footer extends StatefulWidget {
  const Footer({
    Key? key,
  }) : super(key: key);

  @override
  _FooterState createState() => _FooterState();
}

class _FooterState extends State<Footer> with SingleTickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      color: Get.theme.primaryColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12),
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  '© ${DateTime.now().year} RenanKanu',
                  style: TextStyle(
                    color: Get.theme.colorScheme.secondary,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
