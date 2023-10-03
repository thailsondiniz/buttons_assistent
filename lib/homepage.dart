import 'package:flutter/material.dart';
import 'package:flutter_assist_virtual/pageTwo.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      backgroundColor: const Color(0xff303030),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.end,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Container(
          decoration: const BoxDecoration(color: Color(0xff424242)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Spacer(),
                  const Text(
                    'Choose one of the options bellow',
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
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff848484),
                    ),
                    onPressed: () {
                      Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const PageTwo(),
                            ),
                          );
                    },
                    child: const Text(
                      'I\'m a customer',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff848484),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'I\'m not a customer',
                      style: TextStyle(color: Colors.white),
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
    );
    
  }
}
