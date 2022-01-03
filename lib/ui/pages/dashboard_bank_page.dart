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
            Expanded(
              child: ListView(
                  shrinkWrap: true,
                  physics: AlwaysScrollableScrollPhysics(),
                  children: [
                    Text('Hei, Reza',
                        style: blackFontStyle1.copyWith(
                            fontSize: 26, color: mainColor)),
                    const SizedBox(height: 25),
                    CreditCardWidget(
                        cardNumber: '',
                        expiryDate: '',
                        cardHolderName: '',
                        cvvCode: '',
                        showBackView: false,
                        onCreditCardWidgetChange:
                            (CreditCardBrand creditCardBrand) {}),
                    const SizedBox(height: 25),
                    GridView(
                      physics: const NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        crossAxisSpacing: 13,
                        mainAxisSpacing: 12,
                        childAspectRatio: 0.6,
                      ),
                      children: [
                        // Item Modul Desakini
                        ItemGridBank(Icons.attach_money_outlined, 'Top Up'),
                        GestureDetector(
                            onTap: () {
                              Get.to(() => FormTransferBank());
                            },
                            child:
                                ItemGridBank(Icons.money_outlined, 'Transfer')),
                        GestureDetector(
                            onTap: () {
                              Get.to(() => TagihanPage());
                            },
                            child:
                                ItemGridBank(Icons.bolt_outlined, 'Listrik')),
                        ItemGridBank(Icons.water_outlined, 'Air'),
                        ItemGridBank(
                            Icons.signal_cellular_alt_outlined, 'Pulsa'),
                        ItemGridBank(Icons.wifi_outlined, 'Internet'),
                        ItemGridBank(Icons.local_hospital_outlined, 'BPJS'),
                      ],
                    ),
                    const SizedBox(height: 30),
                    Text('Transaksi Terbaru',
                        style: blackFontStyle1.copyWith(
                          fontSize: 13,
                        )),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(children: [
                          Text('Transfer antar bank',
                              style: blackFontStyle3.copyWith(fontSize: 15)),
                          Text('12 Januari 2022 | 20:00 WIB',
                              style: blackFontStyle3.copyWith(fontSize: 10)),
                        ]),
                        Text('Rp.150.000',
                            style: blackFontStyle3.copyWith(fontSize: 15))
                      ],
                    ),
                    const SizedBox(height: 5),
                    Divider(height: 1, color: greyDotIndicator),
                  ]),
            ),
          ],
        ),
      )),
    );
  }
}
