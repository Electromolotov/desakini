part of 'widgets.dart';

class ItemGridBank extends StatelessWidget {
  final IconData iconData;
  final String nameItem;

  ItemGridBank(this.iconData, this.nameItem);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 69,
          width: 69,
          decoration: BoxDecoration(shape: BoxShape.circle, color: greyGrid),
          child: Icon(iconData, color: Colors.black),
        ),
        const SizedBox(height: 7),
        Text(
          nameItem,
          style: blackFontStyle1.copyWith(fontSize: 10),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }
}
