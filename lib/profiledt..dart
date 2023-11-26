import 'package:flutter/material.dart';
import 'package:test_11_12/userdt.dart';

class Profiledt extends StatefulWidget {
  const Profiledt({super.key});

  @override
  State<Profiledt> createState() => _ProfiledtState();
}

class _ProfiledtState extends State<Profiledt> {
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
        title: const Text('Edit profile',
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold)),
      ),
      body: SafeArea(
        child: Container(
          color: Colors.grey.withOpacity(0.1),
          child: Column(
            children: [
              SizedBox(
                height: 35,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const Userdt()),
                  );
                },
                child: Container(
                  height: 53,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.grey.withOpacity(0.3))),
                  padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.local_laundry_service_outlined,
                        size: 40,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        'Edit profile details',
                        style: TextStyle(fontSize: 20),
                      ),
                      Expanded(child: Container()),
                      Icon(Icons.arrow_forward_ios_outlined)
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Edit your videos',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_laundry_service_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Edit working hours',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Edit services',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              hline(),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.calendar_month,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Add payment method',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 15,
              ),
              hline(),
              SizedBox(
                height: 15,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_laundry_service_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Edit live meeting preferences',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                height: 53,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(color: Colors.grey.withOpacity(0.3))),
                padding: EdgeInsets.fromLTRB(16, 0, 16, 0),
                child: Row(
                  children: [
                    Icon(
                      Icons.local_laundry_service_outlined,
                      size: 40,
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Edit video preferences',
                      style: TextStyle(fontSize: 20),
                    ),
                    Expanded(child: Container()),
                    Icon(Icons.arrow_forward_ios_outlined)
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
