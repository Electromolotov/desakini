part of 'pages.dart';

class ConfirmPaymentBankPage extends StatelessWidget {
  ConfirmPaymentBankPage({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  PaymentMethod _value = PaymentMethod.virtualAccount;

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
            const SizedBox(height: 25),
            Text(
              'Pembayaran',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 10),
            Text(
                'Pilih metode pembayaran anda untuk melanjutkan proses pembayaran tagihan.',
                style: blackFontStyle3.copyWith(fontSize: 13)),
            const SizedBox(height: 50),
            Text('Metode Pembayaran',
                style: blackFontStyle1.copyWith(fontSize: 13)),
            ListTile(
              title: const Text('Virtual Account'),
              leading: Radio(
                  activeColor: mainColor,
                  value: PaymentMethod.virtualAccount,
                  groupValue: _value,
                  onChanged: (PaymentMethod? value) {
                    _value = value!;
                  }),
            ),
            const SizedBox(height: 10),
            const Divider(height: 1),
            const SizedBox(height: 50),
            Text('Total Pembayaran',
                style: blackFontStyle1.copyWith(fontSize: 13)),
            const SizedBox(height: 5),
            Text('Rp.344.000', style: blackFontStyle3.copyWith(fontSize: 13)),
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
                  Get.to(() => SuccessBankPage(
                        textSuccess:
                            'DIAH SARI BANK BNI 0122xxxx\nRp.150.000\nNovember 2021',
                      ));
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
