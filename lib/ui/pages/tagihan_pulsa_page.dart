part of 'pages.dart';

class TagihanPulsaPage extends StatefulWidget {
  TagihanPulsaPage({Key? key}) : super(key: key);

  @override
  State<TagihanPulsaPage> createState() => _TagihanPulsaPageState();
}

class _TagihanPulsaPageState extends State<TagihanPulsaPage>
    with TickerProviderStateMixin {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  TextEditingController _controller1 = TextEditingController();

  late TabController _tabController;

  void _openEndDrawer() {
    _scaffoldKey.currentState!.openEndDrawer();
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    _tabController.addListener(() {
      _handleTabSelection();
    });
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
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
              'Pulsa',
              style: blackFontStyle1.copyWith(fontSize: 26),
            ),
            const SizedBox(height: 10),
            Text('Pembayaran pulsa',
                style: blackFontStyle3.copyWith(fontSize: 13)),
            const SizedBox(height: 30),
            TextFormField(
              controller: _controller1,
              decoration: InputDecoration(
                  labelText: 'Nomor selular',
                  labelStyle:
                      const TextStyle(color: Colors.black, fontSize: 13),
                  hintText: 'Masukan nomor pelanggan',
                  hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                  enabledBorder: const UnderlineInputBorder(
                    borderSide: BorderSide(color: Colors.black, width: 1),
                  )),
            ),
            const SizedBox(height: 50),
            TabBar(
              controller: _tabController,
              unselectedLabelColor: Colors.black,
              labelStyle: blackFontStyle3.copyWith(fontSize: 14),
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), // Creates border
                  color: mainColor),
              tabs: const [
                Tab(
                  text: 'Pulsa',
                ),
                Tab(
                  text: 'Paket Data',
                ),
              ],
            ),
            [
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: GridView(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 38,
                    mainAxisSpacing: 29,
                    childAspectRatio: 3,
                  ),
                  children: [
                    GestureDetector(
                      onTap: () {
                        Get.to(() => ConfirmPaymentBankPage());
                      },
                      child: Container(
                        width: 130,
                        height: 40,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.white),
                        child: Center(child: Text('Rp 10.000')),
                      ),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(child: Text('Rp 15.000')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(child: Text('Rp 20.000')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(child: Text('Rp 25.000')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(child: Text('Rp 50.000')),
                    ),
                    Container(
                      width: 130,
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: Colors.white),
                      child: Center(child: Text('Rp 100.000')),
                    ),
                  ],
                ),
              ),
              Container(
                height: 100,
              )
            ][_tabController.index],
          ],
        ),
      )),
    );
  }
}
