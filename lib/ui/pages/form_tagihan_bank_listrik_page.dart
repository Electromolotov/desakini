part of 'pages.dart';

class FormTagihanBank extends StatelessWidget {
  FormTagihanBank({Key? key}) : super(key: key);

  final _scaffoldKey = GlobalKey<ScaffoldState>();
  TextEditingController _controller1 = TextEditingController();
  TextEditingController _controller2 = TextEditingController();
  TextEditingController _controller3 = TextEditingController();
  TextEditingController _controller4 = TextEditingController();
  TextEditingController _controller5 = TextEditingController();

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
        child: SingleChildScrollView(
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
                    style: blackFontStyle1.copyWith(
                        fontSize: 13, color: mainColor),
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
                'Nominal',
                style: blackFontStyle1.copyWith(fontSize: 26),
              ),
              const SizedBox(height: 20),
              Text('Masukan nominal jumlah pengiriman anda',
                  style: blackFontStyle3.copyWith(fontSize: 13)),
              const SizedBox(height: 30),
              TextFormField(
                controller: _controller1,
                decoration: InputDecoration(
                    labelText: 'Nomor Pelanggan',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: '88892039',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller2,
                decoration: InputDecoration(
                    labelText: 'Periode bulan pembayaran',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'November',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller3,
                decoration: InputDecoration(
                    labelText: 'Pemakaian',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: '120Kwh',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller4,
                decoration: InputDecoration(
                    labelText: 'Admin',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Rp.2500',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              TextFormField(
                controller: _controller5,
                decoration: InputDecoration(
                    labelText: 'Tagihan',
                    labelStyle:
                        const TextStyle(color: Colors.black, fontSize: 13),
                    hintText: 'Rp.344.250',
                    hintStyle: TextStyle(fontSize: 13, color: greyfontColor),
                    enabledBorder: const UnderlineInputBorder(
                      borderSide: BorderSide(color: Colors.black, width: 1),
                    )),
              ),
              const SizedBox(height: 15),
              Text(
                'Rp.344.250',
                style: blackFontStyle1.copyWith(fontSize: 26),
              ),
              const SizedBox(height: 40),
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
                    Get.to(() => ConfirmPaymentBankPage());
                  },
                ),
              ),
            ],
          ),
        ),
      )),
    );
  }
}
