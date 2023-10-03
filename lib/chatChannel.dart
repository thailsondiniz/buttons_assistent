import 'package:flutter/material.dart';
import 'package:flutter_assist_virtual/chatRandom.dart';
import 'package:flutter_assist_virtual/create.dart';
import 'package:flutter_assist_virtual/pageThree.dart';

class Channel extends StatefulWidget {
  const Channel({super.key});

  @override
  State<Channel> createState() => _ChannelState();
}

class _ChannelState extends State<Channel> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "lib/img/background_chat.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
        ),
        Scaffold(
          backgroundColor: const Color.fromRGBO(0, 0, 0, 0),
          appBar: AppBar(
            leading: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const Create(),
                  ),
                );
              },
              icon: const Icon(
                Icons.arrow_back,
                color: Colors.white,
              ),
            ),
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
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Thailson Diniz',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 18),
                  ),
                  // Text(
                  //   'Members 2',
                  //   style: TextStyle(
                  //       color: Colors.grey,
                  //       fontWeight: FontWeight.bold,
                  //       fontSize: 12),
                  // ),
                ],
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
              // IconButton(
              //   onPressed: () {},
              //   icon: const Icon(
              //     Icons.edit_off,
              //     color: Colors.redAccent,
              //   ),
              // ),
            ],
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                height: 670,
                child: ListView(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5, top: 0, bottom: 10),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 140, top: 0, bottom: 8),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'Dear user Good morning!',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '15:20 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding:
                                  EdgeInsets.only(left: 5, top: 0, bottom: 10),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  right: 170, top: 0, bottom: 10),
                              child: Text(
                                'Hello, How are you?',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '15:20 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                     Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: const Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 5, top: 0, bottom: 10),
                              
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 0, bottom: 10),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'To notice these updates, please reload your browser\'s web page.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '15:20 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8,right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5, top: 0),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'Goodnight! \n Maintenance completed successfully and the task creation bug has been eliminated. \n\n You can now continue creating tasks and selecting assignees as normal. \n You will be able to update your app version in your app store.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '14:55 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Color(0xff6B6B6B)))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 120,
                                          color: const Color(0xff424242),
                                          child: Center(
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Color(
                                                              0xff424242)),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15,
                                                                    right: 15,
                                                                    bottom: 10,
                                                                    top: 10),
                                                            child: Text(
                                                              'Select an option',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(
                                                              Icons.search,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                              // setState(() {
                                                              //   setState(() {
                                                              //     _isCustomer = true;
                                                              //     Navigator.pop(context);
                                                              //   });
                                                              //   _showBottomSheet();
                                                              // });
                                                            },
                                                            child: const Text(
                                                              '#financial',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              '#prices',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              '#plans',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
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
                                child: const Text(
                                  'Reply',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 5, top: 0, bottom: 10),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 0, bottom: 10),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'The bug is when we select those assigned when creating the task. \n\n Until we can fix this problem, we ask everyone to continue creating tasks but not to add those assigned at the time of task creation. \n\n Create the task but don\'t mark anyone assigned, you can edit and add them later and it will work.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '15:42 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Color(0xff6B6B6B)))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 120,
                                          color: const Color(0xff424242),
                                          child: Center(
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Color(
                                                              0xff424242)),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15,
                                                                    right: 15,
                                                                    bottom: 10,
                                                                    top: 10),
                                                            child: Text(
                                                              'Select an option',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(
                                                              Icons.search,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                              // setState(() {
                                                              //   setState(() {
                                                              //     _isCustomer = true;
                                                              //     Navigator.pop(context);
                                                              //   });
                                                              //   _showBottomSheet();
                                                              // });
                                                            },
                                                            child: const Text(
                                                              'Teste 1',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Teste 2',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Teste 3',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
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
                                child: const Text(
                                  'Reply',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding:
                                  EdgeInsets.only(left: 5, top: 0, bottom: 10),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 0, bottom: 10),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'Dear user Good morning! \nNow you will be able to send Gifs and Sticks. Enjoy this news!\n\nWe are working on great tasks and will have more news soon.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '15:20 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Color(0xff6B6B6B)))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 120,
                                          color: const Color(0xff424242),
                                          child: Center(
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Color(
                                                              0xff424242)),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15,
                                                                    right: 15,
                                                                    bottom: 10,
                                                                    top: 10),
                                                            child: Text(
                                                              'Select an option',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {},
                                                            icon: const Icon(
                                                              Icons.search,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                              // setState(() {
                                                              //   setState(() {
                                                              //     _isCustomer = true;
                                                              //     Navigator.pop(context);
                                                              //   });
                                                              //   _showBottomSheet();
                                                              // });
                                                            },
                                                            child: const Text(
                                                              'Project 1',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Project 2',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              'Project 3',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
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
                                child: const Text(
                                  'Reply',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                   
                    Padding(
                      padding:
                          const EdgeInsets.only(left:8, right: 60, top: 10, bottom: 10),
                      child: Container(
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10),
                              topRight: Radius.circular(10),
                              bottomRight: Radius.circular(10)),
                          color: Color(0xff3C4C4B),
                        ),
                        child: Column(
                          children: [
                            const Padding(
                              padding: EdgeInsets.only(left: 5, top: 0),
                              
                            ),
                            const Padding(
                              padding: EdgeInsets.only(
                                  left: 10, right: 10, top: 10, bottom: 10),
                              child: Text(
                                textAlign: TextAlign.justify,
                                'Dear user, Good evening!\n\nIf you have not yet added a photo to your profile, it is extremely important to do so as other users will find you better when your profile has a photo.',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            const Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.only(right: 10, bottom: 10),
                                  child: Text(
                                    '17:47 PM',
                                    style: TextStyle(
                                        color: Color(0xffC3C9C7), fontSize: 11),
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: double.infinity,
                              height: 50,
                              decoration: const BoxDecoration(
                                  border: Border(
                                      top: BorderSide(
                                          color: Color(0xff6B6B6B)))),
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                ),
                                onPressed: () {
                                  showModalBottomSheet<void>(
                                      context: context,
                                      builder: (BuildContext context) {
                                        return Container(
                                          height: 120,
                                          color: const Color(0xff424242),
                                          child: Center(
                                            child: Column(
                                              children: <Widget>[
                                                Container(
                                                  decoration:
                                                      const BoxDecoration(
                                                          color: Color(
                                                              0xff424242)),
                                                  child: Column(
                                                    children: [
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceBetween,
                                                        children: [
                                                          const Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 15,
                                                                    right: 15,
                                                                    bottom: 10,
                                                                    top: 10),
                                                            child: Text(
                                                              'Select an option',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white,
                                                                  fontSize: 18),
                                                            ),
                                                          ),
                                                          IconButton(
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            icon: const Icon(
                                                              Icons.search,
                                                              color:
                                                                  Colors.white,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Row(
                                                        mainAxisAlignment:
                                                            MainAxisAlignment
                                                                .spaceAround,
                                                        children: [
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                              // setState(() {
                                                              //   setState(() {
                                                              //     _isCustomer = true;
                                                              //     Navigator.pop(context);
                                                              //   });
                                                              //   _showBottomSheet();
                                                              // });
                                                            },
                                                            child: const Text(
                                                              '#financial',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              '#prices',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
                                                            ),
                                                          ),
                                                          ElevatedButton(
                                                            style:
                                                                ElevatedButton
                                                                    .styleFrom(
                                                              backgroundColor:
                                                                  const Color(
                                                                      0xff848484),
                                                            ),
                                                            onPressed: () {
                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                  builder:
                                                                      (context) =>
                                                                          const ChatRandom(),
                                                                ),
                                                              );
                                                            },
                                                            child: const Text(
                                                              '#plans',
                                                              style: TextStyle(
                                                                  color: Colors
                                                                      .white),
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
                                child: const Text(
                                  'Reply',
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 16),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    
                  ],
                ),
              ),
              Flexible(
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 50,
                      color: const Color(0xff303030),
                      child: const Padding(
                        padding: EdgeInsets.only(top: 13),
                        child: Text(
                          textAlign: TextAlign.center,
                          'Only the Thailson Diniz can send messages',
                          style:
                              TextStyle(color: Color(0xff777777), fontSize: 17),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
