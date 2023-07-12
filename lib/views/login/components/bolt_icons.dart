import 'package:flutter/material.dart';

class BoltIcons extends StatelessWidget {
  const BoltIcons({Key? key, this.count = 2}) : super(key: key);
  final int? count;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 30,
      width: count == 1 ? 30 : (22 * count!).toDouble(),
      child: Stack(
        children: [
          for (var i = 0; i < count!; i++)
            Positioned(
              left: (i) * 18,
              top: 1,
              child: CircleAvatar(
                backgroundColor: Colors.black,
                radius: 14,
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.amber,
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.amber.withOpacity(.3),
                        blurRadius: 10,
                        spreadRadius: 1,
                        offset: const Offset(0, 0),
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.bolt,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
