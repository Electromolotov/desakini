part of 'pages.dart';

class FaqPage extends StatelessWidget {
  FaqPage({Key? key}) : super(key: key);

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
          top: 25,
          left: defaultMargin,
          right: defaultMargin,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                style: blackFontStyle1.copyWith(fontSize: 13, color: mainColor),
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
            'F.A.Q',
            style: blackFontStyle1.copyWith(fontSize: 26),
          ),
          const SizedBox(
            height: 60,
          ),
          Text(
            'Perbankan',
            style: blackFontStyle1.copyWith(fontSize: 22),
          ),
          const SizedBox(height: 13),
          ExpansionTile(
            title: Text(
              'Transfer Antar Bank',
              style: blackFontStyle1.copyWith(fontSize: 13),
            ),
            children: [
              // isi FAQ
              Text('Isi Faq')
            ],
          ),
          const SizedBox(height: 10),
          ExpansionTile(
            title: Text(
              'Proses Pengiriman',
              style: blackFontStyle1.copyWith(fontSize: 13),
            ),
            children: [
              // isi FAQ
              Text('Isi Faq')
            ],
          ),
        ]),
      )),
    );
  }
}
