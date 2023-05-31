part of'00_main_app_button.dart';



class RangeSliderWidget extends StatefulWidget {
  const RangeSliderWidget({Key? key}) : super(key: key);

  @override
  State<RangeSliderWidget> createState() => _RangeSliderWidgetState();
}

class _RangeSliderWidgetState extends State<RangeSliderWidget> {
  RangeValues values = const RangeValues(70, 220);
  final labels = ['70', '120', '170', '220', '270', '320'];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: 16.h,),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              for (int i = 0; i < labels.length; i++)
                Text(
                  labels[i],
                  style: const TextStyle(fontSize: 12),
                ),
            ],
          ),
        ),
        RangeSlider(
          values: values,
          min: 70,
          max: 320,
          divisions: labels.length - 1,
          labels: RangeLabels(
            '\$${values.start.round()}',
            '\$${values.end.round()}',
          ),
          onChanged: (value) {
            setState(() {
              values = value;
            });
          },
          semanticFormatterCallback: (value) {
            return labels[value.toInt()];
          },
        ),


      ],
    );
  }
}
