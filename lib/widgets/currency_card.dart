import 'package:flutter/material.dart';

class CurrenyCard extends StatelessWidget {
  final String name, amount, code;
  final IconData icon;

  final _blackColor = const Color(0xFF1F2123);
  final bool isInverted;

  const CurrenyCard({
    super.key,
    required this.name,
    required this.amount,
    required this.code,
    required this.icon,
    required this.isInverted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: isInverted ? Colors.white : _blackColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      color: isInverted ? _blackColor : Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500),
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  children: [
                    Text(amount,
                        style: TextStyle(
                            color: isInverted ? Colors.black : Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w500)),
                    const SizedBox(width: 10),
                    Text(code,
                        style: TextStyle(
                            color: isInverted
                                ? _blackColor
                                : Colors.white.withOpacity(
                                    0.8,
                                  ),
                            fontSize: 16,
                            fontWeight: FontWeight.w500)),
                  ],
                ),
              ],
            ),
            Transform.scale(
              scale: 2.2,
              child: Transform.translate(
                offset: const Offset(-5, 10),
                child: Icon(
                  icon,
                  color: isInverted ? _blackColor : Colors.white,
                  size: 80,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
