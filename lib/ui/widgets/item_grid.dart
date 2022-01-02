part of 'widgets.dart';

class ItemGrid extends StatelessWidget {
  final IconData iconData;
  final String nameItem;

  ItemGrid(this.iconData, this.nameItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          width: 70,
          decoration: BoxDecoration(shape: BoxShape.circle, color: mainColor),
          child: Icon(iconData, color: Colors.white),
        ),
        SizedBox(height: 7),
        Text(
          nameItem,
          style: blackFontStyle1.copyWith(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
