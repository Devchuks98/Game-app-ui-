import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class Games extends StatefulWidget {
  final List<String> imageUrls = [
    'https://sm.ign.com/ign_ap/screenshot/default/garenaworld_uxah.png',
    'https://gamingonphone.com/wp-content/uploads/2020/07/mlbb.jpg',
    'https://assets-prd.ignimgs.com/2022/03/09/pubgbattlegrounds-1646861967387.jpg',
    'https://storage.indoesports.com/images/smc-1-eng.png',
    'https://is4-ssl.mzstatic.com/image/thumb/PurpleSource123/v4/ca/3d/e7/ca3de7e6-aa70-be59-2560-6595c9e14829/6775787a-f28c-4b24-b148-adabddd01928_2732x2048-06.jpg/643x0w.jpg',
    'https://toram-jp.akamaized.net/en/img/common/ogp_toramonline.jpg',
    'https://www.muycomputer.com/wp-content/uploads/2021/02/Black-Desert-Online-Gratis-Steam-1000x600.jpg',
    'https://image.api.playstation.com/vulcan/img/rnd/202104/2507/Xdncb153Sz5UZMaF0X944NP5.png',
  ];
  Games({super.key});

  @override
  State<Games> createState() => _GamesState();
}

class _GamesState extends State<Games> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: const Icon(
                        Ionicons.arrow_back,
                        color: Colors.green,
                      ),
                    ),
                    const SizedBox(width: 5),
                    //
                    const Text(
                      "Game",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.green,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //
                Row(
                  children: const [
                    Text(
                      'Choose Your Game',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Spacer(),
                    Icon(Ionicons.search_outline),
                  ],
                ),
                const SizedBox(height: 25),
                Container(
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://kevurugames.com/wp-content/uploads/2022/12/lowpoly-game-1024x576.jpg',
                      ),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blueAccent,
                  ),
                  height: 100,
                  width: 400,
                  child: Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: const [
                        Icon(
                          Ionicons.game_controller,
                          size: 70,
                          color: Colors.amber,
                        ),
                        Text(
                          "DISCOUNT \n50%",
                          style: TextStyle(
                            fontSize: 25,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(height: 25),
                Row(
                  children: const [
                    Text(
                      'Popular Game',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                ),
                const SizedBox(height: 20),

                //available games Row 1
                Row(
                  children: [
                    // CALL OF DUTY
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://sm.ign.com/ign_ap/screenshot/default/garenaworld_uxah.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'CoD Mobile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    //MLBB
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://gamingonphone.com/wp-content/uploads/2020/07/mlbb.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'MLBB',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    //PUBG Mobile
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://assets-prd.ignimgs.com/2022/03/09/pubgbattlegrounds-1646861967387.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'PUBG Mobile',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        )
                      ],
                    ),

                    //SMC
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://storage.indoesports.com/images/smc-1-eng.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'SMC',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                //available games Row 2
                Row(
                  children: [
                    //AOV
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://is4-ssl.mzstatic.com/image/thumb/PurpleSource123/v4/ca/3d/e7/ca3de7e6-aa70-be59-2560-6595c9e14829/6775787a-f28c-4b24-b148-adabddd01928_2732x2048-06.jpg/643x0w.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'AOV',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //TORAM ONLINE
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://static.tvtropes.org/pmwiki/pub/images/toram.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Toram',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //BLACk DESERT
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://www.muycomputer.com/wp-content/uploads/2021/02/Black-Desert-Online-Gratis-Steam-1000x600.jpg',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Black Desert',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),

                    //GENSHIN IMPACT
                    const Spacer(),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: const DecorationImage(
                              image: NetworkImage(
                                'https://image.api.playstation.com/vulcan/img/rnd/202104/2507/Xdncb153Sz5UZMaF0X944NP5.png',
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 70,
                          width: 70,
                        ),
                        const SizedBox(height: 5),
                        const Text(
                          'Genshin',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                const SizedBox(height: 5),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
