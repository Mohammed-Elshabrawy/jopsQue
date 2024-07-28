/**import 'package:flutter/cupertino.dart';
import 'package:intro_slider/intro_slider.dart';
import 'Slider Screens/Slide1.dart';


class slider extends StatefulWidget {
  const slider({super.key});

  @override
  State<slider> createState() => _sliderState();
}

class _sliderState extends State<slider> {
  List<ContentConfig> listContentConfig = [];
  @override
  void initState() {
    listContentConfig.add(
      one()
    );
    listContentConfig.add(
        one()
    );

  }
  void onDonePress() {
    print("End of slides");
  }
  @override
  Widget build(BuildContext context) {


    return IntroSlider(
      listContentConfig: listContentConfig,
      onDonePress: onDonePress,
    );
  }
}
*/