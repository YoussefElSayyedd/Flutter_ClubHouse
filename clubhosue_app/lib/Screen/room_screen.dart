import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:quiz_app/data.dart';
import 'package:quiz_app/widgets/room_user_profile.dart';
import '../models/room.dart';
import '../widgets/user_profile_image.dart';

class RoomScreen extends StatelessWidget {
  final Room room;

  const RoomScreen({
    super.key,
    required this.room,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leadingWidth: 110,
        leading: TextButton.icon(
          style: TextButton.styleFrom(
            foregroundColor: Colors.black,
            textStyle: const TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.w500,
            ),
          ),
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(
            CupertinoIcons.chevron_down,
          ),
          label: const Text("Hallway"),
        ),
        actions: [
          IconButton(
            icon: const Icon(
              CupertinoIcons.doc,
              color: Colors.black,
              size: 32,
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
      body: Container(
        padding: const EdgeInsets.all(20.0),
        height: MediaQuery.of(context).size.height,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
        ),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        room.club.toUpperCase(),
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              fontSize: 14.0,
                              fontWeight: FontWeight.w500,
                              letterSpacing: 1.0,
                            ),
                      ),
                      const Icon(
                        CupertinoIcons.ellipsis,
                      )
                    ],
                  ),
                  Text(
                    room.name,
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontSize: 14.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.0,
                        ),
                  ),
                ],
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12.0),
              sliver: SliverGrid.count(
                crossAxisCount: 3,
                mainAxisSpacing: 15.0,
                children: room.speakers
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 70,
                        isNew: Random().nextBool(),
                        isMuted: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Followed by Speakers",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
                children: room.followedBySpeakers
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 55,
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            SliverToBoxAdapter(
              child: Text(
                "Others in the room",
                style: Theme.of(context).textTheme.titleSmall!.copyWith(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey[500]),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.all(12.0),
              sliver: SliverGrid.count(
                crossAxisCount: 4,
                childAspectRatio: 0.7,
                mainAxisSpacing: 15.0,
                children: room.others
                    .map(
                      (e) => RoomUserProfile(
                        imageUrl: e.imageURL,
                        name: e.firstName,
                        size: 45,
                        isNew: Random().nextBool(),
                      ),
                    )
                    .toList(),
              ),
            ),
            const SliverPadding(
              padding: EdgeInsets.only(bottom: 60),
            )
          ],
        ),
      ),
      bottomSheet: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 12),
        height: 90,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                padding: const EdgeInsets.all(12),
                backgroundColor: Colors.grey[300],
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                ),
              ),
              child: const Text(
                ' Leave quietly',
                style: TextStyle(
                  color: Colors.red,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Row(
              children: [
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      CupertinoIcons.add,
                      size: 30,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Colors.grey[300],
                    ),
                    padding: const EdgeInsets.all(6),
                    child: const Icon(
                      CupertinoIcons.hand_raised,
                      size: 30,
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
