part of 'pages.dart';

class NotifPage extends StatelessWidget {
  NotifPage({Key? key}) : super(key: key);

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
              'Notifikasi',
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
            const SizedBox(height: 40),
            Container(
              width: 326,
              height: 65,
              decoration: BoxDecoration(color: greyColor),
              child: Padding(
                padding: const EdgeInsets.only(
                    top: 14, left: 15, right: 15, bottom: 7),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Proses surat perizinan anda telah selesai di terbitkan mohon bawa surat kelengkapan untuk mengambil',
                      style: blackFontStyle1.copyWith(fontSize: 11),
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
