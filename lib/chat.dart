import 'package:flutter/material.dart';
import 'package:flutter_assist_virtual/pageThree.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});

  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat> {
  IconData microfone = Icons.mic_rounded;
  final TextEditingController _controller = TextEditingController();
  List<String> messages = [];
  @override
  void initState() {
    super.initState();
  }

  void sendMessage() {
    final text = _controller.text;
    _controller.clear();
    if (text.isNotEmpty) {
      setState(() {
        messages.add(text);
        microfone = Icons.mic_rounded;
      });
    }
  }

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
                      builder: (context) => const PageThree(),
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
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'lib/img/profile_user.png',
                    width: 45,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hatem - Support',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18),
                    ),
                    Text(
                      'Members 2',
                      style: TextStyle(
                          color: Colors.grey,
                          fontWeight: FontWeight.bold,
                          fontSize: 12),
                    ),
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
                Flexible(
                  child: ListView.builder(
                    itemCount: messages.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(bottom: 10, top: 10),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: const Color(0xff1A746B)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                Text(
                                  messages[index],
                                  style: const TextStyle(color: Colors.white),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Column(
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            width: 330,
                            height: 45,
                            decoration: BoxDecoration(
                                color: const Color(0xff424242),
                                borderRadius: BorderRadius.circular(15)),
                            child: TextField(
                              controller: _controller,
                              onChanged: (value) {
                                setState(() {
                                  microfone = Icons.send;
                                });
                              },
                              style: const TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Icon(
                                  Icons.emoji_emotions_outlined,
                                  color: Color(0xff46964A),
                                ),
                                suffixIcon: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.camera_alt_outlined,
                                        color: Color(0xff46964A),
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {},
                                      icon: const Icon(
                                        Icons.attach_file,
                                        color: Color(0xff46964A),
                                      ),
                                    ),
                                  ],
                                ),
                                hintText: 'Type a message...',
                                hintStyle: const TextStyle(
                                  color: Color(0xffB0B0B0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.circular(50)),
                          child: IconButton(
                            icon: Icon(
                              microfone,
                              color: Colors.white,
                            ),
                            onPressed: () {
                              sendMessage();
                            },
                          ),
                        ),
                      ],
                    ),
                    Container(
                      height: 55,
                      width: double.infinity,
                      color: const Color(0xff303030),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            width: 180,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff424242),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.folder_open_outlined,
                                  color: Color(0xFF757575),
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Open',
                                  style: TextStyle(color: Color(0xFF757575)),
                                ),
                                SizedBox(
                                  width: 60,
                                ),
                                Icon(
                                  Icons.arrow_drop_down,
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Container(
                            width: 180,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xff424242),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(
                                  Icons.check_circle_outline,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text(
                                  'Save',
                                  style: TextStyle(color: Colors.green),
                                )
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            )),
      ],
    );
  }
}


   // Container(
                          //   height: 40,
                          //   width: 180,
                          //   decoration: BoxDecoration(
                          //       color: const Color(0xff424242),
                          //       borderRadius: BorderRadius.circular(10)),
                          //   child: DropdownButtonFormField<String>(
                          //     padding: const EdgeInsets.only(left: 10),
                          //     decoration: InputDecoration(
                          //       labelText: 'Status',
                          //       contentPadding: const EdgeInsets.only(
                          //         left: 10,
                          //         right: 10,
                          //       ),
                          //       labelStyle: const TextStyle(
                          //           color: Color(0xff46964a), fontSize: 15),
                          //       enabledBorder: const OutlineInputBorder(
                          //           borderSide: BorderSide.none),
                          //       border: const OutlineInputBorder(
                          //         borderSide: BorderSide.none,
                          //         borderRadius: BorderRadius.all(
                          //           Radius.circular(10),
                          //         ),
                          //       ),
                          //       prefixIcon: Icon(
                          //         dropdownIcon,
                          //         color: dropdownColor,
                          //       ),
                          //     ),
                          //     value: dropdownValue,
                          //     dropdownColor: const Color(0xff424242),
                          //     icon: const Icon(
                          //       Icons.arrow_drop_down,
                          //       color: Colors.white,
                          //     ),
                          //     isExpanded: true,
                          //     elevation: 16,
                          //     style: TextStyle(
                          //       color: dropdownColor,
                          //     ),
                          //     onChanged: (String? value) {
                          //       setState(() {
                          //         dropdownValue = value!;
                          //         updateColorAndIcon(dropdownValue);
                          //       });
                          //     },
                          //     items: list.map<DropdownMenuItem<String>>(
                          //       (String value) {
                          //         return DropdownMenuItem<String>(
                          //           value: value,
                          //           child: Text(value,
                          //               style: TextStyle(
                          //                   color: getItemColor(value))),
                          //         );
                          //       },
                          //     ).toList(),
                          //   ),
                          // ),