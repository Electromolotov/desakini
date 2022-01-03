part of 'pages.dart';

class NominalTransferBank extends StatelessWidget {
  NominalTransferBank({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();

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
        child: SingleChildScrollView(
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
                    style: blackFontStyle1.copyWith(
                        fontSize: 13, color: mainColor),
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
                'Nominal',
                style: blackFontStyle1.copyWith(fontSize: 26),
              ),
              const SizedBox(height: 20),
              Text('Masukan nominal jumlah pengiriman anda',
                  style: blackFontStyle3.copyWith(fontSize: 13)),
              const SizedBox(height: 30),
              TextFormField(
                controller: _controller1,
                decoration: const InputDecoration(
                    labelText: 'Nominal transfer',
                    labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                    enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 200),
              ConstrainedBox(
                constraints:
                    const BoxConstraints.tightFor(width: 313, height: 52),
                child: ElevatedButton(
                  child: Center(
                      child: Text('Lanjutkan',
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
                              'DIAH SARI BANK BNI 0122xxxx\nRp.150.000\nPembayaran sewa alat',
                        ));
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
