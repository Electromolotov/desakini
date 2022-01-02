part of 'pages.dart';

class LaporanPage extends StatelessWidget {
  LaporanPage({Key? key}) : super(key: key);

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
            const SizedBox(height: 45),
            Text(
              'Fitur surat dan pelaporan warga desa',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                const Icon(Icons.search),
                Expanded(
                  child: TextFormField(
                    controller: _controller1,
                    decoration: const InputDecoration(
                        enabledBorder: UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
                  ),
                ),
                const Icon(Icons.sort_outlined,
                    textDirection: TextDirection.rtl),
              ],
            ),
            const SizedBox(height: 50),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 108,
                  width: 147,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 11, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.list_alt_outlined,
                            color: Colors.white,
                          ),
                          Text('Surat Keterangan',
                              style: blackFontStyle1.copyWith(
                                  fontSize: 13, color: Colors.white)),
                        ]),
                  ),
                ),
                Container(
                  height: 108,
                  width: 147,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 11, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.text_snippet_outlined,
                            color: Colors.white,
                          ),
                          Text('Surat Rekomendasi',
                              style: blackFontStyle1.copyWith(
                                  fontSize: 13, color: Colors.white)),
                        ]),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 108,
                  width: 147,
                  decoration: BoxDecoration(
                    color: mainColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.only(left: 11, top: 16, bottom: 16),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const Icon(
                            Icons.description_outlined,
                            color: Colors.white,
                          ),
                          Text('Surat Pengantar',
                              style: blackFontStyle1.copyWith(
                                  fontSize: 13, color: Colors.white)),
                        ]),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Get.to(() => TulisLaporanPage());
                  },
                  child: Container(
                    height: 108,
                    width: 147,
                    decoration: BoxDecoration(
                      color: mainColor,
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsets.only(left: 11, top: 16, bottom: 16),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            const Icon(
                              Icons.insert_drive_file_outlined,
                              color: Colors.white,
                            ),
                            Text('Surat Lainnya',
                                style: blackFontStyle1.copyWith(
                                    fontSize: 13, color: Colors.white)),
                          ]),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      )),
    );
  }
}

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
              controller: _controller1,
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

class StatusLaporan extends StatelessWidget {
  StatusLaporan({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();

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
              'Status Laporan',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 20),
            Container(
              width: 326,
              height: 87,
              decoration: BoxDecoration(color: greyColor),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 14, left: 15, right: 15, bottom: 12),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Pembuangan Sampah',
                        style: blackFontStyle1.copyWith(fontSize: 11)),
                    Text(
                      'Banyak sampah berserakan di Rt002/Rw.043, karena tidak adanya tempat pembuangan sampah.',
                      style: blackFontStyle3.copyWith(fontSize: 11),
                    ),
                    Row(
                      children: [
                        Icon(Icons.schedule_outlined,
                            color: mainColor, size: 10),
                        Text(
                          '12 menit lalu',
                          style: blackFontStyle3.copyWith(
                              fontSize: 11,
                              color: mainColor,
                              fontStyle: FontStyle.italic),
                        ),
                        const SizedBox(width: 15),
                        Container(
                          width: 65,
                          height: 16,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50),
                              color: greenColor),
                          child: Center(
                              child: Text('Menunggu',
                                  style:
                                      blackFontStyle3.copyWith(fontSize: 9))),
                        )
                      ],
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      )),
    );
  }
}
