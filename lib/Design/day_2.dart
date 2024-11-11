import 'package:flutter/material.dart';

class Day2 extends StatefulWidget {
  const Day2({super.key});

  @override
  State<Day2> createState() => _Day2State();
}

class _Day2State extends State<Day2> {
  final List<Map<String, dynamic>> favorites = [
    {"icon": Icons.phone, "title": "Pulsa & Data"},
    {"icon": Icons.account_balance, "title": "Transfer"},
    {"icon": Icons.wallet_rounded, "title": "E-Wallet"},
    {"icon": Icons.account_balance_wallet_rounded, "title": "Top Up"},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 60, right: 30, left: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: <Color>[Color(0xffB10000), Color(0xffE40A0D)],
                    ),
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.red,
                  ),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                  color: Colors.white,
                                  width: 2,
                                  strokeAlign: BorderSide.strokeAlignOutside),
                              image: DecorationImage(
                                  image:
                                      AssetImage("assets/images/person1.jpg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(width: 7),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text("Hi, Selamat siang",
                                    style: TextStyle(
                                        fontSize: 11,
                                        color: Colors.white,
                                        fontWeight: FontWeight.w100)),
                                Text("MUHAMMAD RIZKY FIRMANSYAH",
                                    style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold)),
                              ],
                            ),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.notifications,
                              color: Colors.white,
                              size: 24,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 17),
                      Row(
                        children: [
                          Material(
                            color: Colors.transparent,
                            child: InkWell(
                              borderRadius: BorderRadius.circular(50),
                              splashColor: Colors.black.withOpacity(0.15),
                              onTap: () {},
                              child: Padding(
                                padding: const EdgeInsets.all(2.0),
                                child: Icon(
                                  Icons.copy_sharp,
                                  size: 15,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                          SizedBox(width: 5),
                          Text(
                            "50420913",
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                "Saldo Rekening",
                                style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              SizedBox(width: 5),
                              Material(
                                color: Colors.transparent,
                                child: InkWell(
                                  borderRadius: BorderRadius.circular(50),
                                  splashColor: Colors.black.withOpacity(0.15),
                                  onTap: () {},
                                  child: Padding(
                                    padding: const EdgeInsets.all(2.0),
                                    child: Icon(
                                      Icons.remove_red_eye,
                                      size: 15,
                                      color: Colors.white.withOpacity(0.5),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Text(
                                "Rp.",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(width: 5),
                              Text(
                                "* *** *** ****",
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 26),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Favorit",
                  style: TextStyle(
                    fontSize: 15,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 5),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 14, vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xffE40A0D),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        Icons.keyboard_arrow_left_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: 90,
                          child: ListView.builder(
                            scrollDirection: Axis.horizontal,
                            itemCount: favorites.length,
                            itemBuilder: (context, index) {
                              return Container(
                                padding: const EdgeInsets.only(right: 20),
                                alignment: Alignment.center,
                                child: IconText(
                                  icon: Icon(favorites[index]["icon"],
                                      size: 30, color: Colors.red),
                                  title: favorites[index]["title"],
                                  colorText: Colors.white,
                                  weightText: FontWeight.bold,
                                ),
                              );
                            },
                          ),
                        ),
                      ),
                      Icon(
                        Icons.keyboard_arrow_right_rounded,
                        size: 20,
                        color: Colors.white,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IconText extends StatelessWidget {
  final Icon icon;
  final String title;
  final Color colorText;
  final FontWeight weightText;

  const IconText({
    super.key,
    required this.icon,
    required this.title,
    required this.colorText,
    required this.weightText,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          width: 60,
          height: 60,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
          ),
          child: Center(child: icon),
        ),
        SizedBox(height: 3),
        Text(
          title,
          style: TextStyle(
            fontSize: 12,
            fontWeight: weightText,
            color: colorText,
          ),
        ),
      ],
    );
  }
}
