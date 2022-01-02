part of 'pages.dart';

class TentangPage extends StatelessWidget {
  TentangPage({Key? key}) : super(key: key);

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
              'Tentang',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(
              height: 40,
            ),
            Text(
                'PLEASE READ THESE TERMS AND CONDITIONS (“T&Cs”) CAREFULLY. BY PARTICIPATING IN THE EDUCATIONAL CAMPAIGN (“CAMPAIGN”) OF THE PROJECT, YOU WILL BE BOUND BY THESE T&Cs AND ALL TERMS INCORPORATED HEREIN BY REFERENCE. \n\n BY ACCEPTING THESE T&CS, YOU WILL BE ENTERING INTO A BINDING AGREEMENT WITH THE PROJECT. IF YOU DO NOT AGREE TO ANY OF THE TERMS SET OUT IN THESE T&Cs, YOU BELIEVE THAT ANY TERMS SHOULD NOT APPLY TO YOU, OR YOU WISH TO NEGOTIATE THESE TERMS, PLEASE DO NOT PARTICIPATE IN THE CAMPAIGN. \n\n PLEASE NOTE THAT PROJECT IS PROVIDING TO YOU AN EDUCATIONAL CONTENT FOR INFORMATIONAL PURPOSES ONLY. THIS CONTENT AND ANY INFORMATION CONTAINED THEREIN, DOES NOT CONSTITUTE A RECOMMENDATION BY PROJECT OR COINMARKETCAP TO BUY, SELL, OR HOLD ANY PROJECT TOKEN OR ANY OTHER DIGITAL ASSET REFERENCED IN THE CONTENT.',
                style: blackFontStyle3.copyWith(fontSize: 13))
          ],
        ),
      )),
    );
  }
}
