part of'00_real_estate_layout.dart';

class PublicPrivetList extends StatelessWidget {
  const PublicPrivetList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return const PublicPrivetTabBar();
    },
    itemCount: 10,);
  }
}
// PublicPrivetTabBar