part of 'widgets.dart';

class ItemGridDesa extends StatelessWidget {
  const ItemGridDesa(
    this.name, {
    Key? key,
  }) : super(key: key);

  final String name;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 167,
      height: 61,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.circular(30.5),
      ),
      child: Center(
          child: Text(
        name,
        style: blackFontStyle3.copyWith(fontSize: 15, color: Colors.white),
      )),
    );
  }
}
