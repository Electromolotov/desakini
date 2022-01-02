part of 'pages.dart';

class DashboardBankPage extends StatelessWidget {
  DashboardBankPage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();

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
                      Get.offAll(() => HomePage());
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
            const SizedBox(height: 25),
            Text('Hei, Reza',
                style:
                    blackFontStyle1.copyWith(fontSize: 26, color: mainColor)),
            const SizedBox(height: 25),
            CreditCardWidget(
                cardNumber: '',
                expiryDate: '',
                cardHolderName: '',
                cvvCode: '',
                showBackView: false,
                onCreditCardWidgetChange: (CreditCardBrand creditCardBrand) {}),
          ],
        ),
      )),
    );
  }
}
