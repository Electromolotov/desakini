part of 'widgets.dart';

class ItemGridAllProduct extends StatelessWidget {
  ItemGridAllProduct({
    this.nameProduct,
    this.hargaProduk,
    this.tokoProduk,
    this.imagePath,
    Key? key,
  }) : super(key: key);

  final String? nameProduct;
  final String? hargaProduk;
  final String? tokoProduk;
  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 146,
        height: 169,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5),
          border: Border.all(width: 1, color: greyColor),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 9, right: 9, top: 9, bottom: 14),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(imagePath!),
              Text(nameProduct!, style: blackFontStyle1.copyWith(fontSize: 13)),
              Text(hargaProduk!, style: blackFontStyle1.copyWith(fontSize: 10)),
              Text(tokoProduk!,
                  style: blackFontStyle3.copyWith(
                      fontSize: 8, color: greyDotIndicator))
            ],
          ),
        ));
  }
}
