part of 'widgets.dart';

class ItemTabPenawaran extends StatelessWidget {
  const ItemTabPenawaran({
    required this.image,
    required this.productName,
    required this.storeName,
    required this.quantity,
    required this.cost,
    Key? key,
  }) : super(key: key);

  final Image image;
  final String productName;
  final String storeName;
  final String quantity;
  final String cost;

  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 4,
      borderRadius: BorderRadius.circular(5),
      child: Container(
        height: 64,
        width: 337,
        decoration: BoxDecoration(
            border: Border.all(width: 1, color: Colors.white),
            borderRadius: BorderRadius.circular(5)),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 6),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              image,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(productName,
                      style: blackFontStyle3.copyWith(fontSize: 15)),
                  Text(storeName,
                      style: blackFontStyle3.copyWith(
                          fontSize: 11, color: greyDotIndicator)),
                  const SizedBox(
                    height: 6,
                  ),
                  Text(quantity,
                      style: blackFontStyle3.copyWith(
                          fontSize: 11,
                          color: greyDotIndicator,
                          fontStyle: FontStyle.italic)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Icon(Icons.add_circle_outline),
                  Text(cost,
                      style: blackFontStyle1.copyWith(
                        fontSize: 12,
                      )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
