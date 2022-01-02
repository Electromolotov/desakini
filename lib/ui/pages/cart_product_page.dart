part of 'pages.dart';

class CartProductPage extends StatefulWidget {
  CartProductPage({Key? key}) : super(key: key);

  @override
  State<CartProductPage> createState() => _CartProductPageState();
}

class _CartProductPageState extends State<CartProductPage> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _controller1 = TextEditingController();

  int _counterValue = 0;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: EndDrawer(),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.only(
            top: 25, left: defaultMargin, right: defaultMargin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: Icon(Icons.arrow_back, color: mainColor)),
                Text(
                  'DESAKINI',
                  style:
                      blackFontStyle1.copyWith(fontSize: 13, color: mainColor),
                ),
                GestureDetector(
                    onTap: _openEndDrawer,
                    child: Icon(
                      Icons.menu,
                      color: mainColor,
                    )),
              ],
            ),
            const SizedBox(height: 45),
            Text(
              'Keranjang',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(
              height: 40,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('1 item', style: blackFontStyle3.copyWith(fontSize: 18)),
                Row(
                  children: [
                    const Icon(Icons.edit),
                    Icon(Icons.delete_outline, color: Colors.red),
                  ],
                )
              ],
            ),
            const SizedBox(height: 10),
            Container(
              width: 331,
              height: 119,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(width: 1, color: greyColor)),
              child: Padding(
                padding:
                    const EdgeInsets.only(top: 8, left: 9, right: 9, bottom: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Telur Ayam',
                            style: blackFontStyle3.copyWith(fontSize: 15)),
                        Text('Telur Ayam',
                            style: blackFontStyle3.copyWith(
                                fontSize: 11, color: greyDotIndicator)),
                        Text('Rp.344.000',
                            style: blackFontStyle3.copyWith(fontSize: 16)),
                        Container(
                          width: 85,
                          height: 25,
                          decoration: BoxDecoration(color: greyColor),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _counterValue--;
                                      });
                                    },
                                    child: Icon(Icons.remove)),
                                Text('${_counterValue}',
                                    style:
                                        blackFontStyle3.copyWith(fontSize: 15)),
                                GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        _counterValue++;
                                      });
                                    },
                                    child: Icon(Icons.add)),
                              ]),
                        ),
                      ],
                    ),
                    Image.asset('assets/Rectangle 253.png'),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 200),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 313, height: 52),
              child: ElevatedButton(
                child: Center(
                    child: Text('Pesan',
                        style: blackFontStyle3.copyWith(
                            fontSize: 15, color: Colors.white))),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: greyDotIndicator),
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(mainColor)),
                onPressed: () {
                  Get.to(() => ConfirmPaymentPage());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
