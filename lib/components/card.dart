import 'package:flutter/material.dart';

class ScheduleBox extends StatelessWidget {
  final List<String> names;
  final String title;
  // Ex) 11:00 to 12:20 -> [11, 00, 12, 20]
  final List<String> time;
  final Color cardColor;
  const ScheduleBox(
      {super.key,
      required this.names,
      required this.title,
      required this.time,
      required this.cardColor});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 150,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: cardColor,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Text(
                time[0],
                style: const TextStyle(
                  fontSize: 25,
                  height: 0.7,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                time[1],
              ),
              const SizedBox(
                height: 25,
                child: VerticalDivider(
                  thickness: 1.25,
                  color: Colors.black,
                ),
              ),
              Text(
                time[2],
                style: const TextStyle(
                  fontSize: 25,
                  height: 0.7,
                ),
                textAlign: TextAlign.center,
              ),
              Text(
                time[3],
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontSize: 35,
                    fontWeight: FontWeight.w600,
                    height: 0.9,
                  ),
                ),
                Row(
                  children: [
                    for (String name in names)
                      Padding(
                        padding: const EdgeInsets.only(right: 30),
                        child: Text(
                          name,
                          style: TextStyle(
                            fontSize: 15,
                            color: name == "ME"
                                ? Colors.black
                                : Colors.black.withOpacity(0.6),
                          ),
                        ),
                      ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
