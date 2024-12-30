import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:islami_splash/api/api_services.dart';
import 'package:islami_splash/app_theme.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islami_splash/loading_indicator.dart';
import 'package:islami_splash/response_radio/radio.dart';
import 'package:islami_splash/response_radio/response_radio.dart';
import 'package:islami_splash/tabs/Radio/radio_widgets.dart';

class RadioTab extends StatefulWidget {
  const RadioTab({super.key});

  @override
  State<RadioTab> createState() => _RadioTabState();
}

class _RadioTabState extends State<RadioTab> {
  PageController controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset("assets/images/images/radio_image.png"),
        const SizedBox(
          height: 20,
        ),
        Text(
          "إذاعة القرآن الكريم",
          style: Theme.of(context).textTheme.headlineLarge,
        ),
        SizedBox(
          height: 200,
          child: FutureBuilder<ResponseRadio>(
            future: ApiServices.getRadio(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.waiting) {
                return LoadingIndicator();
              } else if (snapshot.hasError) {
                return Text("something wet error");
              } else {
                List<Radios> radios = snapshot.data!.radios ?? [];
                final AudioPlayer player = AudioPlayer();
                return PageView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return RadioWidgets(
                      radio: radios[index],
                      player: player,
                      previous: () {
                        player.pause();
                        controller.previousPage(
                            duration: Duration(microseconds: 2),
                            curve: Curves.bounceIn);
                      },
                      next: () {
                        player.pause();
                        controller.nextPage(
                            duration: Duration(microseconds: 2),
                            curve: Curves.decelerate);
                      },
                    );
                  },
                  itemCount: snapshot.data!.radios?.length,
                );
              }
            },
          ),
        ),
      ],
    );
  }
}
