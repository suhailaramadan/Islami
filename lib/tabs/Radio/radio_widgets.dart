import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:islami_splash/response_radio/radio.dart';

class RadioWidgets extends StatelessWidget {
  const RadioWidgets(
      {super.key,
      required this.radio,
      required this.player,
      required this.next,
      required this.previous});
  final Radios radio;
  final AudioPlayer player;
  final Function next, previous;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: const EdgeInsets.all(8),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              IconButton(
                  onPressed: () {
                    previous();
                  },
                  icon: const Icon(
                    Icons.skip_previous,
                    size: 40,
                    color: AppTheme.lightPrimary,
                  )),
              IconButton(
                  onPressed: () {
                    if (radio.url != null) {
                      player.play(UrlSource(radio.url!));
                    }
                  },
                  icon: const Icon(
                    Icons.play_arrow_rounded,
                    color: AppTheme.lightPrimary,
                    size: 50,
                  )),
              IconButton(
                  onPressed: () {
                    player.pause();
                  },
                  icon: const Icon(
                    Icons.pause,
                    color: AppTheme.lightPrimary,
                    size: 45,
                  )),
              IconButton(
                  onPressed: () {
                    next();
                  },
                  icon: const Icon(
                    Icons.skip_next,
                    size: 40,
                    color: AppTheme.lightPrimary,
                  )),
            ],
          ),
          Text(
            radio.name ?? '',
            style: Theme.of(context)
                .textTheme
                .headlineLarge
                ?.copyWith(fontSize: 22),
          ),
        ],
      ),
    );
  }
}
