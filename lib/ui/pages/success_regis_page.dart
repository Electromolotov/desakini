part of 'pages.dart';

class SuccessRegisPage extends StatelessWidget {
  SuccessRegisPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 100),
            Center(
              child: Text('Selamat,\nproduk anda telah\nberhasil di upload.',
                  textAlign: TextAlign.center,
                  style:
                      blackFontStyle1.copyWith(fontSize: 26, color: mainColor)),
            ),
            const SizedBox(height: 25),
            Center(
              child: Text(
                  'Selanjutnya produk kamu akan ditinjau oleh\nBUMDES untuk verifikasi',
                  textAlign: TextAlign.center,
                  style:
                      blackFontStyle3.copyWith(fontSize: 13, color: mainColor)),
            ),
            const SizedBox(height: 30),
            Center(
                child: Icon(Icons.check_circle_outline,
                    size: 150, color: mainColor)),
            const SizedBox(height: 70),
            ConstrainedBox(
              constraints:
                  const BoxConstraints.tightFor(width: 313, height: 52),
              child: ElevatedButton(
                child: Center(
                    child: Text('Lanjutkan',
                        style: blackFontStyle3.copyWith(
                            fontSize: 15, color: mainColor))),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: mainColor),
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  Get.offAll(() => HomePage());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
