// ignore: file_names
import 'package:flutter/material.dart';
import 'package:game_app_ui/styles/buttons.dart';

import 'Homepage.dart';

class OnBoardingPage extends StatefulWidget {
  const OnBoardingPage({super.key});

  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  late PageController _pageController;

  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: PageView.builder(
                  itemCount: demo_data.length,
                  controller: _pageController,
                  onPageChanged: (index) {
                    setState(() {
                      _pageIndex = index;
                    });
                  },
                  itemBuilder: (context, index) => Onboardcontent(
                    image: demo_data[index].image,
                    title: demo_data[index].title,
                    description: demo_data[index].description,
                  ),
                ),
              ),
              Row(
                children: [
                  ...List.generate(
                    demo_data.length,
                    (index) => Padding(
                      padding: const EdgeInsets.only(right: 4),
                      child: DotIndicator(isActive: index == _pageIndex),
                    ),
                  ),
                  const Spacer(),
                  SizedBox(
                    height: 80,
                    width: 60,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                        shape: const CircleBorder(),
                      ),
                      onPressed: () {
                        _pageController.nextPage(
                            duration: const Duration(milliseconds: 300),
                            curve: Curves.ease);
                      },
                      child: const Icon(Icons.arrow_forward_outlined),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              //Get started elevated button
              ElevatedButton(
                style: buttonPrimary,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    ),
                  );
                },
                child: const Text(
                  'Continue',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class DotIndicator extends StatelessWidget {
  const DotIndicator({
    super.key,
    this.isActive = false,
  });

  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: isActive ? 12 : 4,
      width: 4,
      decoration: const BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
    );
  }
}

class Onboard {
  final String image, title, description;

  Onboard({
    required this.image,
    required this.title,
    required this.description,
  });
}

final List<Onboard> demo_data = [
  Onboard(
    image:
        "https://cdni.iconscout.com/illustration/premium/thumb/girl-playing-a-game-in-the-metaverse-6985312-5686608.png?f=webp",
    title: "Find the game you've \nbeen looking for",
    description:
        "To me the arcade experience is the ultimate gaming experience. Let\'s GAME!",
  ),
  Onboard(
    image:
        "https://cdni.iconscout.com/illustration/premium/thumb/boy-playing-vr-game-5339306-4475292.png",
    title: "Engage multiple gamers \nWorld wide",
    description:
        "Enter the game universe \nand explore with fellow gamers online",
  ),
  Onboard(
    image:
        "https://cdni.iconscout.com/illustration/premium/thumb/vr-gaming-7303571-5967335.png?f=webp",
    title: "Battle enemies and conquer kingdoms",
    description:
        "Choose battle stage, select opponent, \nand show the world what a hell of a warrior you are",
  ),
  Onboard(
    image:
        "https://cdni.iconscout.com/illustration/premium/thumb/man-watching-video-using-vr-tech-5375204-4491396.png?f=webp",
    title: "Find an Ally and conquer kingdoms together",
    description: "In this chapter, you'll have to merge with an ally",
  ),
];

class Onboardcontent extends StatelessWidget {
  const Onboardcontent({
    super.key,
    required this.image,
    required this.title,
    required this.description,
  });
  final String image, title, description;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //image
        const Spacer(),
        Image.network(
          image,
          height: 250,
        ),
        const Spacer(),

        //text
        Text(
          title,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                fontWeight: FontWeight.w500,
              ),
        ),
        const SizedBox(height: 16),

        //description
        Text(
          description,
          textAlign: TextAlign.center,
        ),
        const Spacer(),
      ],
    );
  }
}
