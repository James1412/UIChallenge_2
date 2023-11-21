// ignore_for_file: must_be_immutable

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:ui_challenge_2/components/card.dart';

class HomeScreen extends StatelessWidget {
  List<int> days = [16, 17, 18, 19, 20, 21];
  List schedule = [
    [
      ["11", "30", "12", "20"],
      "DESIGN\nMEETING",
      ['ALEX', "HELENA", "NANA"],
      Colors.yellow,
    ],
    [
      ["12", "35", "14", "10"],
      "DAILY\nPROJECT",
      ['ME', "RICHARD", "CIRY", "+4"],
      Colors.purple.shade300,
    ],
    [
      ["15", "00", "16", "30"],
      "DESIGN\nMEETING",
      ['DEN', "NANA", "MARK"],
      Colors.green.shade500,
    ],
    [
      ["17", "00", "19", "30"],
      "PREPARE\nPRESENTATION",
      ['ME', "DEN", "MARK"],
      Colors.orange.shade500,
    ],
  ];
  HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1B1C1E),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40.0, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(27.5),
                  child: Image.asset(
                    "assets/8.jpg",
                    fit: BoxFit.cover,
                    height: 55,
                    width: 55,
                  ),
                ),
                const Icon(
                  Icons.add,
                  color: Colors.white,
                  size: 45,
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 25.0, left: 20, right: 20),
            child: Text(
              "MONDAY 16",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            child: SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const Text(
                    "TODAY •",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  for (int day in days)
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      child: Text(
                        day.toString(),
                        style: const TextStyle(
                          color: Colors.grey,
                          fontSize: 35,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: ListView.builder(
                itemCount: schedule.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: ScheduleBox(
                      time: schedule[index][0],
                      title: schedule[index][1],
                      names: schedule[index][2],
                      cardColor: schedule[index][3],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
