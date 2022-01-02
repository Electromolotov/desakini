part of 'pages.dart';

class BankPage extends StatelessWidget {
  BankPage({Key? key}) : super(key: key);

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
          crossAxisAlignment: CrossAxisAlignment.center,
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
            Text('Masukan 6 digit PIN\nanda untuk melanjutkan',
                textAlign: TextAlign.center,
                style:
                    blackFontStyle1.copyWith(fontSize: 26, color: mainColor)),
            const SizedBox(height: 45),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Pin',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Nama lengkap',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
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
                            fontSize: 15, color: mainColor))),
                style: ButtonStyle(
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        side: BorderSide(width: 1, color: mainColor),
                        borderRadius: BorderRadius.circular(50))),
                    backgroundColor:
                        MaterialStateProperty.all<Color>(Colors.white)),
                onPressed: () {
                  Get.to(() => DashboardBankPage());
                },
              ),
            ),
          ],
        ),
      )),
    );
  }
}
