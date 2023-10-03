import 'package:flutter/material.dart';
import 'package:flutter_assist_virtual/chat.dart';
import 'package:flutter_assist_virtual/chatChannel.dart';
import 'package:flutter_assist_virtual/chatFinancial.dart';

class PageThree extends StatefulWidget {
  const PageThree({super.key});

  @override
  State<PageThree> createState() => _PageThreeState();
}

class _PageThreeState extends State<PageThree> {
  var initial = 'I\'m a customer';
  var initialTwo = 'I\'m not a customer';
  bool _isCustomer = true;
  void _showBottomSheet() {
    showModalBottomSheet<void>(
      context: context,
      builder: (BuildContext context) {
        return buildBottomSheetContent();
      },
    );
  }

  Widget buildBottomSheetContent() {
    return Container(
      height: 170,
      color: const Color(0xff424242),
      child: Column(
        children: [
          Padding(
            padding:
                const EdgeInsets.only(left: 25, right: 15, bottom: 10, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Select an option',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
          Wrap(
            alignment: WrapAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: SizedBox(
                  height: 30,
                  width: 135,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff848484),
                      ),
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const Chat(),
                          ),
                        );
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                          Text(
                            '#Support',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          )
                        ],
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: SizedBox(
                  height: 30,
                  width: 140,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff848484),
                    ),
                    onPressed: () {
                       Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const ChatFinancial(),
                    ),
                  );
                    },
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_up,
                          color: Colors.white,
                        ),
                        Text(
                          '#financial',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: SizedBox(
                  height: 30,
                  width: 190,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff848484),
                    ),
                    onPressed: () {},
                    child: const Row(
                      children: [
                        Icon(
                          Icons.arrow_circle_up,
                          color: Colors.white,
                        ),
                        Text(
                          '#human resources',
                          style: TextStyle(color: Colors.white, fontSize: 13),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 10, bottom: 10),
                child: SizedBox(
                  height: 30,
                  width: 130,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff848484),
                      ),
                      onPressed: () {},
                      child: const Row(
                        children: [
                          Icon(
                            Icons.refresh,
                            color: Colors.white,
                          ),
                          Text(
                            '#prices',
                            style: TextStyle(color: Colors.white, fontSize: 13),
                          ),
                        ],
                      )),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Container(
        width: 50,
        height: 50,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10), color: Colors.green),
        child: IconButton(
          onPressed: () {
            showModalBottomSheet<void>(
                context: context,
                builder: (BuildContext context) {
                  return Container(
                    height: 120,
                    color: const Color(0xff424242),
                    child: Center(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Container(
                            decoration:
                                const BoxDecoration(color: Color(0xff424242)),
                            child: Column(
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    const Spacer(),
                                    const Text(
                                      'Choose one of the options bellow',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 18),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.search,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ],
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff848484),
                                      ),
                                      onPressed: () {
                                        setState(() {
                                          setState(() {
                                            _isCustomer = true;
                                            Navigator.pop(context);
                                          });
                                          _showBottomSheet();
                                        });
                                      },
                                      child: Text(
                                        initial,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                    ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            const Color(0xff848484),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        initialTwo,
                                        style: const TextStyle(
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                });
          },
          icon: const Icon(
            Icons.add,
            color: Colors.white,
            size: 30,
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: const Color(0xff424242),
        title: Flex(direction: Axis.horizontal, children: [
          SizedBox(
            width: 45,
            height: 45,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'lib/img/boy.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            width: 10,
          ),
          const Text(
            'Thailson Diniz',
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),
          )
        ]),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_outlined,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.filter_alt_off_sharp,
              color: Colors.white,
            ),
          ),
        ],
      ),
      backgroundColor: const Color(0xff303030),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
         InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Channel(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(6),
              child: Container(
                height: 75,
                decoration: BoxDecoration(
                    color: const Color(0xff424242),
                    borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Container(
                                width: 55,
                                height: 55,
                                decoration: BoxDecoration(
                                    color: const Color(0xff393939),
                                    borderRadius: BorderRadius.circular(50)),
                                child: const Icon(
                                  Icons.campaign_outlined,
                                  size: 40,
                                  color: Color(0xFF336335),
                                ),
                              ),
                              const SizedBox(
                                width: 16,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 0, bottom: 5),
                                    child: Row(
                                      children: [
                                        const Text(
                                          'Channel',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 16),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsets.only(left: 105),
                                          child: Row(
                                            children: [
                                              const Text(
                                                '4 minutes ago',
                                                style: TextStyle(
                                                  color: Color(0xff949494),
                                                ),
                                              ),
                                              const SizedBox(
                                                width: 7,
                                              ),
                                              Container(
                                                width: 20,
                                                height: 20,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            50),
                                                    color: Colors.green),
                                                child: const Padding(
                                                  padding:
                                                      EdgeInsets.only(left: 6),
                                                  child: Text(
                                                    '5',
                                                    style: TextStyle(
                                                        color: Colors.white,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const Text(
                                    'Dear user, Good evening!If you have not...',
                                    style: TextStyle(color: Colors.white),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const Chat(),
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.only(left: 10),
              child: Row(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 55,
                        height: 55,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Image.asset(
                            'lib/img/profile_user.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Row(
                          children: [
                            Icon(
                              Icons.person,
                              color: Colors.white,
                            ),
                            Text(
                              'Hatem - Support',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 16),
                            ),
                            SizedBox(
                              width: 120,
                            ),
                            Text(
                              'today',
                              style: TextStyle(color: Colors.white),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            const Text(
                              'Open',
                              style: TextStyle(
                                  color: Color(0xffFFEC41), fontSize: 16),
                            ),
                            const SizedBox(
                              width: 240,
                            ),
                            Container(
                              width: 20,
                              height: 20,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(50),
                                  color: Colors.green),
                              child: const Padding(
                                padding: EdgeInsets.only(left: 6),
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                            )
                          ],
                        ),
                        const Row(
                          children: [
                            Icon(
                              Icons.schedule,
                              color: Colors.white,
                              size: 14,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '03/02 - 03/02/2023 08:00 - 14:00',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'Normal',
                              style:
                                  TextStyle(color: Colors.green, fontSize: 12),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              '#Support',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
