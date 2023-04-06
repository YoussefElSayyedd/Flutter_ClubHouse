import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/widgets/room_card.dart';
import 'package:quiz_app/widgets/user_profile_image.dart';

import '../constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          icon: const Icon(
            Icons.search,
            color: Colors.black,
            size: 30,
          ),
          onPressed: () {},
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.envelope_open,
              color: Colors.black,
              size: 28,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.calendar,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(
              CupertinoIcons.bell,
              color: Colors.black,
              size: 30,
            ),
            onPressed: () {},
          ),
          GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: UserProfileImage(
                size: 30,
                imageUrl: currentUser.imageURL,
              ),
            ),
          ),
        ],
      ),
      body: Stack(
        alignment: Alignment.center,
        children: [
          ListView(
            padding: const EdgeInsets.all(20.0),
            children: [
              ...roomList.map((e) => RoomCard(room: e)),
            ],
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 100,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                    colors: [
                      Theme.of(context)
                          .scaffoldBackgroundColor
                          .withOpacity(0.1),
                      Theme.of(context).scaffoldBackgroundColor,
                    ]),
              ),
            ),
          ),
          Positioned(
            bottom: 40,
            child: ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.add,
                size: 22,
                color: Colors.white,
              ),
              label: const Text(
                "Start a room",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.only(
                    left: 15.0, top: 8.0, right: 15.0, bottom: 8.0),
                backgroundColor: kAccentColor,
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(18.0)),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
