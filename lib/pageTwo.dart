import 'package:flutter/material.dart';
import 'package:flutter_assist_virtual/chat.dart';
import 'package:flutter_assist_virtual/pageThree.dart';

class PageTwo extends StatefulWidget {
  const PageTwo({super.key});

  @override
  State<PageTwo> createState() => _PageTwoState();
}

class _PageTwoState extends State<PageTwo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
        backgroundColor: const Color(0xff303030),
        appBar: AppBar(
          backgroundColor: const Color(0xff424242),
          title: Flex(direction: Axis.horizontal, children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset(
                'lib/img/weellu_profile.png',
                width: 45,
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Text(
              'Weellu',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: const BoxDecoration(color: Color(0xff424242)),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 15, right: 15, bottom: 10, top: 10),
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
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
                            onPressed: () {},
                            child: const Row(
                              children: [
                                Icon(
                                  Icons.arrow_circle_up,
                                  color: Colors.white,
                                ),
                                Text(
                                  '#financial',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
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
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 13),
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
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 13),
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
            )
          ],
        ));
  }
}
