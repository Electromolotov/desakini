part of 'shared.dart';

Color mainColor = '148A9B'.toColor();
Color greyColor = "E5E5E5".toColor();
Color greyDotIndicator = 'C4C4C4'.toColor();
Color greyfontColor = 'DADADA'.toColor();
Color greenColor = '5FF27F'.toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: mainColor,
);

TextStyle greyFontStyle = GoogleFonts.roboto().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.roboto()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w700);
TextStyle blackFontStyle2 = GoogleFonts.roboto()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.roboto().copyWith(
  color: Colors.black,
);

const double defaultMargin = 25;
