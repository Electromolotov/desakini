part of 'pages.dart';

class TulisLaporanPage extends StatelessWidget {
  TulisLaporanPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 45),
            Text(
              'Laporan',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 20),
            Text(
                'Ajukan Laporan maupun Saran/Kritik/Ide anda ke Pemdes untuk keamanan dan kemajuan desa agar lebih baik',
                style: blackFontStyle3.copyWith(fontSize: 15)),
            const SizedBox(height: 20),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Judul laporan',
                  labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan judul laporan',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 15),
            TextFormField(
              controller: _controller2,
              decoration: InputDecoration(
                  labelText: 'Tulis laporan',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan laporan anda',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 45),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              GestureDetector(
                onTap: () {
                  Get.to(() => StatusLaporan());
                },
                child: Container(
                  width: 153,
                  height: 43,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: Colors.white,
                      border: Border.all(width: 1, color: mainColor)),
                  child: Center(
                    child: Text(
                      'Lihat laporan',
                      style: blackFontStyle3.copyWith(
                          fontSize: 15, color: mainColor),
                    ),
                  ),
                ),
              ),
              Container(
                width: 153,
                height: 43,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30),
                    color: Colors.white,
                    border: Border.all(width: 1, color: mainColor)),
                child: Center(
                  child: Text(
                    'Kirim',
                    style: blackFontStyle3.copyWith(
                        fontSize: 15, color: mainColor),
                  ),
                ),
              ),
            ])
          ],
        ),
      )),
    );
  }
}
