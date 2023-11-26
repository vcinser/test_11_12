import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class Camera extends StatefulWidget {
  const Camera({super.key});

  @override
  State<Camera> createState() => _CameraState();
}

class _CameraState extends State<Camera> {
  List showmodal = [
    {
      'checked': false,
      'day': 'mondey',
    },
    {
      'checked': false,
      'day': 'Wednesday',
    },
    {
      'checked': false,
      'day': 'Thursday',
    },
    {
      'checked': false,
      'day': 'Friday',
    },
    {
      'checked': false,
      'day': 'Saturday',
    },
    {
      'checked': false,
      'day': 'Sunday',
    },
    {
      'checked': false,
      'day': 'mondey',
    },
  ];

  show() {
    return showModalBottomSheet<void>(
        backgroundColor: Colors.transparent,
        context: context,
        isScrollControlled: true,
        builder: (BuildContext context) {
          return StatefulBuilder(
            builder: (context, setState) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: (70 * showmodal.length.toDouble()) + 200,

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(8.0),
                        decoration: BoxDecoration(
                        color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                        ),
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            mainAxisSize: MainAxisSize.min,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 16, 0, 16),
                                child: const Text(
                                  "Copy Monday's time blocks to:",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold, fontSize: 20),
                                ),
                              ),
                             
                            
                              Container(
                                child: ListView.builder(
                                  itemCount: showmodal.length,
                                  shrinkWrap: true,
                                  itemBuilder: (context, index) {
                                    var item = showmodal[index];
                                    return Padding(
                                      padding: const EdgeInsets.fromLTRB(
                                          16, 4, 16, 4),
                                      child: InkWell(
                                        onTap: () {
                                          setState(() {
                                            item['checked'] = !item['checked'];
                                          });
                                        },
                                        child: Container(
                                          height: 50,
                                          padding: const EdgeInsets.fromLTRB(
                                              14, 0, 0, 0),
                                          decoration: BoxDecoration(
                                            color: item['checked']
                                                ? Colors.blue.withOpacity(0.3)
                                                : Colors.transparent,
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            children: [
                                              Container(
                                                width: 30,
                                                height: 30,
                                                decoration: BoxDecoration(
                                                  color: item['checked']
                                                      ? Colors.blue
                                                      : Colors.white,
                                                  border: Border.all(
                                                      color: Colors.grey),
                                                  borderRadius:
                                                      BorderRadius.circular(4),
                                                ),
                                                child: const Icon(
                                                  Icons.check,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 7,
                                              ),
                                              Text(
                                                item['day'],
                                                style: TextStyle(fontSize: 20),
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                              Container(
                                height: 50,
                                child: Container(
                                  alignment: Alignment.center,
                                  padding:
                                      const EdgeInsets.fromLTRB(12, 8, 12, 8),
                                  decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    'Update',
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      InkWell(
                        onTap:() {
                            Navigator.pop(context);
                          },
                        child: Container(
                          height: 60,
                          decoration: BoxDecoration(
                          color: Colors.white,
                            borderRadius: BorderRadius.circular(16),
                          ),
                          alignment: Alignment.center,
                          child: Text('Cancel',style: TextStyle(fontSize: 20),),
                        ),
                      )
                    ],
                  ),
                ),
              );
            },
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit availability',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      body: Column(
        children: [
          Expanded(
            child: SfCalendar(
              view: CalendarView.week,
            ),
          ),
          Container(
            height: 60,
            padding: const EdgeInsets.fromLTRB(18, 8, 18, 8),
            child: Row(
              children: [
                Expanded(
                  child: InkWell(
                    onTap: () {
                      show();
                    },
                    child: Container(
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.withOpacity(0.3)),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Text(
                        'Copy availability',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 12,
                ),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: Colors.blueAccent,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Text(
                      'Save',
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
