part of 'pages.dart';

class FormTransferBank extends StatelessWidget {
  FormTransferBank({Key? key}) : super(key: key);

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
              'Transfer',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 20),
            Text('Anda dapat melakukan transfer dana ke rekening bank.',
                style: blackFontStyle3.copyWith(fontSize: 13)),
            const SizedBox(height: 30),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Pilih Bank',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Pilih bank tujuan transfer anda',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Nomor rekening tujuan',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan nomor rekening ',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Catatan',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan inforamsi catatan pengirman',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 30),
            Container(
                width: 331,
                height: 63,
                decoration: BoxDecoration(
                    color: mainColor, borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text(
                        'Untuk mencegah kesalahan transfer, mohon untuk memeriksa kembali nomor tujuan transfer anda',
                        style: blackFontStyle3.copyWith(fontSize: 13)),
                  ),
                )),
            const SizedBox(height: 100),
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
