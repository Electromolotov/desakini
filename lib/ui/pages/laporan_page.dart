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
