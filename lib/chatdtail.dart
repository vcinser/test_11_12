import 'package:flutter/material.dart';

class Chatdtail extends StatefulWidget {
  const Chatdtail({super.key});

  @override
  State<Chatdtail> createState() => _ChatdtailState();
}

class _ChatdtailState extends State<Chatdtail> {
  Widget hline() {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 20, 0, 20),
      child: Container(
        height: 0.3,
        color: Colors.grey,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Start free live session now',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Container(
          child: Column(
            children: [
              Expanded(
                  child: Container(
                padding: const EdgeInsets.fromLTRB(16, 32, 16, 32),
                child: Container(
                  padding: const EdgeInsets.fromLTRB(16, 0, 16, 0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.grey, width: 0.5),
                    borderRadius: BorderRadius.circular(32),
                  ),
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Container(
                          // color: Colors.blue,
                          alignment: Alignment.centerLeft,
                          child: const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text('SERVICE FREE LIVE SESSION'),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                "Free live session",
                                style: TextStyle(
                                    fontSize: 25, fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        hline(),
                        Container(
                          height: 600,
                          // color: Colors.deepPurple,
                          child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'CLIENT',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      decoration: BoxDecoration(
                                        color: Colors.red,
                                        borderRadius: BorderRadius.circular(30),
                                      ),
                                      child: ClipRRect(
                                        borderRadius: BorderRadius.circular(30),
                                        child: Image.asset(
                                          'assets/images/kang.jpeg',
                                          fit: BoxFit.cover,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.fromLTRB(14, 0, 0, 0),
                                      child: Text(
                                        'Emma Jones',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                  ],
                                ),
                                hline(),
                                Container(
                                  child: const Text(
                                    'SESSION DATE',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                        Icons.calendar_today_outlined,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        'Wednesday, Mar 9th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                                hline(),
                                Container(
                                  child: const Text(
                                    'SESSION TIME',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                        Icons.access_time_filled,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '1:00 PM - Mar 9th',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20,
                                            color: Colors.blue),
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: EdgeInsets.fromLTRB(0, 0, 0, 25),
                                      width: 50,
                                      height: 50,
                                      child: const Icon(
                                        Icons.timelapse_rounded,
                                        color: Colors.blue,
                                      ),
                                    ),
                                    Container(
                                      child: const Text(
                                        '30 minutes',
                                        style: TextStyle(
                                          fontSize: 20,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                hline(),
                                Container(
                                  child: const Text(
                                    'COST',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Row(children: [
                                  Container(
                                    width: 50,
                                    height: 50,
                                    child: const Icon(
                                      Icons.bookmark_border,
                                      color: Colors.green,
                                    ),
                                  ),
                                  Container(
                                    child: const Text(
                                      'Free',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: Colors.green),
                                    ),
                                  ),
                                ]),
                              ]),
                        )
                      ],
                    ),
                  ),
                ),
              )),
              Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 16),
                child: Container(
                  height: 60,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Text(
                    'Start live session now',
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
