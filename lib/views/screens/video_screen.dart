import 'package:flutter/material.dart';
import 'package:tiktok_clone/views/widgets/circle_animation.dart';
import 'package:tiktok_clone/views/widgets/video_player_item.dart';
import 'package:video_player/video_player.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  buildProfile(String profilePhoto) {
    return SizedBox(
      width: 60,
      height: 60,
      child: Stack(
        children: [
          Positioned(
              left: 5,
              child: Container(
                width: 50,
                height: 50,
                padding: const EdgeInsets.all(1),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(25),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(25),
                  child: Image(
                    image: NetworkImage(profilePhoto),
                    fit: BoxFit.cover,
                  ),
                ),
              ))
        ],
      ),
    );
  }

  buildMusicAnimation(String profilePhoto) {
    return SizedBox(
        height: 60,
        width: 60,
        child: Container(
            padding: EdgeInsets.all(11),
            height: 50,
            width: 50,
            decoration: BoxDecoration(
                gradient: const LinearGradient(
                    colors: [Colors.grey, Colors.white]
          ),
          borderRadius: BorderRadius.circular(25),
        ),
        child: ClipRRect(borderRadius: BorderRadius.circular(25),
        child: Image(image: NetworkImage(profilePhoto), fit: BoxFit.cover,)
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: PageView.builder(
        // itemCount: ,
        controller: PageController(initialPage: 0, viewportFraction: 1),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Stack(
            children: [
              // VideoPlayerItem(videoUrl: videoUrl),
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Expanded(
                      child: Row(
                          mainAxisSize: MainAxisSize.max,
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                        Expanded(
                            child: Container(
                          padding: const EdgeInsets.only(left: 20),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Text(
                                'username',
                                style: const TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'caption',
                                style: const TextStyle(
                                  fontSize: 15,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                children: [
                                  const Icon(Icons.music_note,
                                      size: 10, color: Colors.white),
                                  Text(
                                    'song',
                                    style: const TextStyle(
                                        fontSize: 15,
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              )
                            ],
                          ),
                        )),
                        Container(
                          width: 100,
                          margin: EdgeInsets.only(top: size.height / 5),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              buildProfile('photo url'),
                              Column(
                                children: [
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.favorite,
                                      size: 30,
                                      color: Colors.red,
                                    ),
                                  ),
                                  Text('5,547 likes',
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.white)),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.comment,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text('5,227',
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.white)),
                                  InkWell(
                                    onTap: () {},
                                    child: Icon(
                                      Icons.reply,
                                      size: 30,
                                      color: Colors.white,
                                    ),
                                  ),
                                  Text('3,547 ',
                                      style: const TextStyle(
                                          fontSize: 10, color: Colors.white)),
                                ],
                              ),
                              CircleAnimation(
                                  child: buildMusicAnimation('profile pic')),
                            ],
                          ),
                        )
                      ]))
                ],
              ),
            ],
          );
        },
      ),
    );
  }
}
