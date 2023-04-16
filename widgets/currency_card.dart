import 'package:flutter/material.dart';

class CurrencyCard extends StatelessWidget {
  final String name, code, amout;
  final IconData icon;
  final bool isInverted;
  final _blackColor = Colors.black;
  final double order;

  const CurrencyCard({
    super.key,
    required this.name,
    required this.code,
    required this.amout,
    required this.icon,
    required this.isInverted,
    required this.order,
  });

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: order == 1 ? const Offset(0, 0) : Offset(0, (order - 1) * -30),
      child: Container(
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: isInverted ? Colors.white : _blackColor,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(25),
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
                      fontSize: 28,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Text(
                        amout,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 17,
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        code,
                        style: TextStyle(
                          color: isInverted
                              ? _blackColor
                              : Colors.white.withOpacity(0.8),
                          fontSize: 17,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Transform.scale(
                scale: 2.4,
                child: Transform.translate(
                  offset: const Offset(
                    -3,
                    5,
                  ),
                  child: Icon(
                    icon,
                    color: isInverted ? _blackColor : Colors.white,
                    size: 75,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
