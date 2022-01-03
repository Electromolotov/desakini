part of 'pages.dart';

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
