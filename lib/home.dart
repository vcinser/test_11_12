import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';
import 'package:test_11_12/chart.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List interview = [
    {
      'color': Colors.blue,
      'percent': '35%',
      'desc': 'Resume edits',
    },
    {
      'color': Colors.yellow,
      'percent': '30%',
      'desc': 'Interview prep',
    },
    {
      'color': Colors.pink,
      'percent': '20%',
      'desc': 'Ongoing education',
    },
    {
      'color': Colors.grey,
      'percent': '15%',
      'desc': 'Other services',
    },
  ];
  String money = '\$72,000';

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
          backgroundColor: Colors.white,
        ),
        body: SingleChildScrollView(
            child: Column(children: [
          Container(
            height: 70,
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
              child: const Text(
                'Starts in 5 minutes',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
            ),
          ),
          Container(
            height: 100,
            child: Container(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
              child: Container(
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue, width: 2),
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                  children: [
                    Container(
                      width: 100,
                      decoration: const BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              bottomLeft: Radius.circular(10))),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "09:45",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          SizedBox(
                            height: 3,
                          ),
                          Text(
                            "Join",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          )
                        ],
                      ),
                    ),
                    Expanded(
                        child: Container(
                      padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                      child: Row(
                        children: [
                          Expanded(
                            child: Container(
                              child: const Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Resume consultation",
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 17),
                                  ),
                                  SizedBox(
                                    height: 3,
                                  ),
                                  Row(
                                    children: [
                                      Icon(
                                        Icons.timer,
                                        size: 15,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text("30 min"),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Icon(Icons.person),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Text('Ashlynn Dias')
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                          Container(
                            width: 44,
                            alignment: Alignment.center,
                            child: InkWell(
                                onTap: () {
                                  print('object');
                                },
                                child: const Icon(
                                    Icons.arrow_forward_ios_rounded)),
                          ),
                        ],
                      ),
                    ))
                  ],
                ),
              ),
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
            child: const Text(
              'Revenue',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: const Text('PAID TO YOU',
                        style: TextStyle(fontWeight: FontWeight.bold)),
                  ),
                  Container(
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "THIS MONTH",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$15,000',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$13K LAST MONTH',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 0.3,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "THIS YEAR",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$72,000',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: const Text(
                      'OUTSTANDING PAYMENTS',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    height: 150,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "PENDING PAYOUT",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$6,000',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 0.3,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "UNPAID INVOICES",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$8,000',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '\$3K OVERDUE',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.redAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 0.3,
                    color: Colors.black,
                  ),
                  Container(
                    height: 44,
                    alignment: Alignment.centerLeft,
                    padding: const EdgeInsets.fromLTRB(16, 0, 0, 0),
                    child: const Text(
                      'LIFETIME SERVICES BREAKDOWN',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                          child: Container(
                        padding: const EdgeInsets.fromLTRB(32, 0, 32, 0),
                        child: Chart(),
                      )),
                      Expanded(
                          child: Container(
                              child: ListView.builder(
                        physics: const NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: interview.length,
                        itemBuilder: (context, index) {
                          var items = interview[index];
                          final color = items['color'];
                          return Container(
                            height: 44,
                            child: Row(
                              children: [
                                Container(
                                  width: 8,
                                  height: 8,
                                  decoration: BoxDecoration(
                                    color: color,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text('${items['percent']}'),
                                const SizedBox(
                                  width: 4,
                                ),
                                Text('${items['desc']}'),
                              ],
                            ),
                          );
                        },
                      ))),
                    ],
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'Create invoice',
                        style: TextStyle(color: Colors.white, fontSize: 18),
                      ),
                    ),
                  ),
                  Container(
                    height: 60,
                    padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
                    alignment: Alignment.center,
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: const Text(
                        'View all invoices',
                        style: TextStyle(color: Colors.black, fontSize: 18),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.fromLTRB(18, 0, 0, 0),
            child: const Text(
              'Clients',
              style: TextStyle(fontSize: 24),
            ),
          ),

          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey.withOpacity(0.3)),
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                children: [
                  Container(
                    height: 120,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "CLIENT COUNT",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '200',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          width: 0.3,
                          color: Colors.black,
                        ),
                        Expanded(
                          child: Container(
                            alignment: Alignment.center,
                            child: const Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  "AVG SESSIONS / CLIENT",
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '3',
                                  style: TextStyle(
                                      fontSize: 25,
                                      fontWeight: FontWeight.bold),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  '',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.greenAccent),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 8, 0),
                    child: Container(
                      height: 1,
                      color: Colors.grey,
                    ),
                  ),
                  Container(
            height: 80,
            child: Row(
              children: [
                Expanded(
                  child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: const Text('TOP 5 CLIENTS',style: TextStyle(color: Colors.grey),),
                  ),
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.centerRight,
                  padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                  child: const Text('SESSIONS',style: TextStyle(color: Colors.grey),),
                  ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: [
                Container(
                  width: 50,
                  height: 50,
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  ),
                  child: ClipRRect(
                     borderRadius: BorderRadius.circular(30),
                    child: Image.asset('assets/images/kang.jpeg',
                    fit: BoxFit.cover,)),
                ),
               Expanded(
                 child: Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.fromLTRB(12, 0, 0, 0),
                  child: const Text('Kang',style: TextStyle(fontSize: 20),),
                 ),
               ),
               Container(
                width: 50,
                alignment: Alignment.center,

                child: const Text('17'),
               )
              ],
            ),
          )
                ],
              ),
            ),
          ),
          
        ]
      )
    )
   );
  }
}
