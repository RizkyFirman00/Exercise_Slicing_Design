import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Person {
  final String name;
  final String image;
  final String? chat;

  Person({required this.name, required this.image, this.chat = "No Message"});
}

class Day1 extends StatelessWidget {
  Day1({super.key});

  final List<Person> personModel = [
    Person(
        name: "Villa",
        image: "assets/images/person1.jpg",
        chat: "Apa Kabar jing?????"),
    Person(name: "Makedonia", image: "assets/images/person2.png"),
    Person(name: "Michelle", image: "assets/images/person3.png"),
    Person(name: "Queen Sadina", image: "assets/images/person4.png"),
    Person(name: "Bob John", image: "assets/images/person5.png"),
  ];

  @override
  Widget build(BuildContext context) {
    // final person = personModel[Index];
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        foregroundColor: Colors.white,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios),
          onPressed: () {
            Get.back();
          },
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.search),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text(
                    "Chat with \nyour friends",
                    style: TextStyle(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 115,
                    child: ListView.builder(
                      itemCount: personModel.length,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return StoryBubble(personModel: personModel[index]);
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(
              child: Container(
                width: double.infinity,
                height: 100,
                padding: const EdgeInsets.symmetric(vertical: 3, horizontal: 10),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(30),
                    topLeft: Radius.circular(30),
                  ),
                ),
                child: Column(
                  children: [
                    Expanded(
                      child: ListView.builder(
                        itemCount: personModel.length,
                        scrollDirection: Axis.vertical,
                        itemBuilder: (context, index) {
                          return ListChat(personModel: personModel[index]);
                        },
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ListChat extends StatelessWidget {
  final Person personModel;

  const ListChat({super.key, required this.personModel});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 25, right: 25, left: 25),
      child: Row(
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black12,
                width: 4.0,
              ),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(personModel.image),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(personModel.name),
              Text(personModel.chat ?? "No message")
            ],
          )
        ],
      ),
    );
  }
}

class StoryBubble extends StatelessWidget {
  final Person personModel;

  const StoryBubble({super.key, required this.personModel});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      width: 80,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: Colors.black12,
                width: 4.0,
              ),
            ),
            child: CircleAvatar(
              radius: 30,
              backgroundImage: AssetImage(personModel.image),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            child: Text(
              personModel.name,
              textAlign: TextAlign.center,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ),
        ],
      ),
    );
  }
}
